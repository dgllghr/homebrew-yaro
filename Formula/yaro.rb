class Yaro < Formula
  desc "Semantic navigator for notes"
  homepage "https://forgejo.gllghr.net/d/yaro"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://forgejo.gllghr.net/d/yaro/releases/download/v0.1.2/yaro_darwin_arm64.tar.gz"
      sha256 "f4d3e70cf8e07ae72ab7d5ffb024b3f6ea0fc958581df260ae654af3666f34e2"
    else
      odie "yaro currently only supports Apple Silicon Macs via Homebrew."
    end
  end

  on_linux do
    odie "yaro currently only supports Apple Silicon Macs via Homebrew."
  end

  def install
    bin.install "yaro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yaro --version")
  end
end
