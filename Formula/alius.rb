class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.6/alius-macos-arm64.tar.gz"
      sha256 "b62f95d09651845fca225cb270e97d780c9a2284fa64704e1b9032f56c35855e"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.6/alius-macos-x64.tar.gz"
      sha256 "336a3e28ade639648b532ae573d7b009a275fb666471b4f01948bd1fa321c470"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.6/alius-linux-x64.tar.gz"
    sha256 "2e9e32d554667a55638bc74307d834c17b61235caf4d7e956046027fa902fff0"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
