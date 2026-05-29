class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.2.0/alius-macos-arm64.tar.gz"
      sha256 "90a4b86847a0f589ddf3649c854808b209dab879aba6c07bdf2c03f0566f4884"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.2.0/alius-macos-x64.tar.gz"
      sha256 "33a253ffc7efa12cc9b0948b8f0534d29b96747381509c5e737e073eb6ccc8f5"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.2.0/alius-linux-x64.tar.gz"
    sha256 "7815018f114bf1b2002a5bdf2ddfb1f45ee24a5c1a7c8fc5bf78756bf2a0164a"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
