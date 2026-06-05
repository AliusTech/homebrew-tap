class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.10/alius-macos-arm64.tar.gz"
      sha256 "2a79843d492a2d0ad7c39a6c629b5c6aab8825dad24d581e0534f2283dd2a397"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.10/alius-macos-x64.tar.gz"
      sha256 "7e6dba3c1d9810c749a18c22e874e95aaaee387c2f224d67fdc69d12385ca19d"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.10/alius-linux-x64.tar.gz"
    sha256 "7659d9b2d599ce8b3659707a8d3e0d93490cfa2ca6b61167057e2fb7ae94614d"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
