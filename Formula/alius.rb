class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.0.8/alius-macos-arm64.tar.gz"
      sha256 "56a403075a39b5f3b761d1ce90832368479bf46b049bfe99dee5d620d7c0cadb"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.0.8/alius-macos-x64.tar.gz"
      sha256 "d6cab159d70fce3bb0fcb62f1453c44cc16ab5d60ff77aa4d4d7d4ec48df78c1"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.0.8/alius-linux-x64.tar.gz"
    sha256 "8d24958e394b348283e98c41a7eb9a793b655a6c831e85336adeab59305e0827"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
