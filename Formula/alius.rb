class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.7/alius-macos-arm64.tar.gz"
      sha256 "1240a7ccb109b7c9cf19a29c2a956ea50b4dccfbaff9f6a2ca5d7d679da53fd6"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.7/alius-macos-x64.tar.gz"
      sha256 "d3b5ee416dc5e34c00c86ca982c1a7bb6a6bb94f22a80e8320eba6ff6e4422b6"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.7/alius-linux-x64.tar.gz"
    sha256 "5dcf5c45fe619c1245d1a307a4bcc51e25a90255ba1c42d95ffbf642c5a43923"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
