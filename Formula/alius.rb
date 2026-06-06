class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/0.6.16/alius-macos-arm64.tar.gz"
      sha256 "a3326ad3f492ee5a09cbaee274ff00ed868332d7bbba9c0a63da9b87442f619a"
    else
      url "https://github.com/AliusTech/alius/releases/download/0.6.16/alius-macos-x64.tar.gz"
      sha256 "67904569cb9ff2acb6940008210a5b98cc664bded5f33dee0b18cdb0b52c4478"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/0.6.16/alius-linux-x64.tar.gz"
    sha256 "27e34b0e1a5347836c2b2959a646ef386a660cb5ec0265931065b6162ef85194"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
