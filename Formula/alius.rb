class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.12/alius-macos-arm64.tar.gz"
      sha256 "d88803c237ae643093324bb6e04d8ba50227d23c9a202f6f9d300ca08f993439"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.12/alius-macos-x64.tar.gz"
      sha256 "67d296ed741e7972b151bae65631c6b91f97f30b0327cc9c0a074020d236ccd4"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.12/alius-linux-x64.tar.gz"
    sha256 "417ef36a35d1b0d3fb2a0efab924d4ae2406d71718ae176b07208fd09744c841"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
