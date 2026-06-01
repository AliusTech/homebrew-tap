class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.1/alius-macos-arm64.tar.gz"
      sha256 "77192a87e22375dd3310995b52115254eea70e79276f0f33aa5117502ddb8b5d"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.1/alius-macos-x64.tar.gz"
      sha256 "0e377adddc0fcc71bc5f5e7ee71e2c9bcba0d0e93dce42eeaafd595ac03eb572"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.1/alius-linux-x64.tar.gz"
    sha256 "7ef6715d80016123bd74c1b031518b94b2c7502fff0a17facd7bbb0d1acc5521"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
