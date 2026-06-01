class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.2/alius-macos-arm64.tar.gz"
      sha256 "c6f0f8f6f71a8ea48935ff48efc044c9765a96b6944e49622e0036b71898bff4"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.2/alius-macos-x64.tar.gz"
      sha256 "e495614f2e6a19a6aa24634b37b0e58dec098849b4ec4e64a4eee31aef9ae821"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.2/alius-linux-x64.tar.gz"
    sha256 "7d2ebc53ee5d032204b0cf4e87088ba71f6ca3ef67c004fce2b5151da6fe9288"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
