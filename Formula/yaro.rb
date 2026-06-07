class Yaro < Formula
  desc "Semantic navigator for notes"
  homepage "https://forgejo.gllghr.net/d/yaro"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://forgejo.gllghr.net/d/yaro/releases/download/v0.1.3/yaro_darwin_arm64.tar.gz"
      sha256 "6a32d2c957ac3e97ece213f6b962cb8f619c87ac8d853170b24585c1ea566585"
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
