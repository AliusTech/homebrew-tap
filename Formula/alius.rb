class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.3.0/alius-macos-arm64.tar.gz"
      sha256 "679fea9f3d168a7a030e6add5d0b5e8bfc06678b03ae36d969e42bfb58858ced"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.3.0/alius-macos-x64.tar.gz"
      sha256 "c802b9d2a24979d5b4373c8dab8ecab496c726b99b07a0d543e51f5b225c565c"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.3.0/alius-linux-x64.tar.gz"
    sha256 "a2233bb9f51474ea2b98d5b26d15d3cd05364ee0931e7772dc3fceaf05dfe000"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
