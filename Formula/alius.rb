class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.0.6/alius-macos-arm64.tar.gz"
      sha256 "64aa24859cafbcdfb7b13ef6963da15891ef799f711b40918775cf8f751c8c84"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.0.6/alius-macos-x64.tar.gz"
      sha256 "7a3544a50467b2e66c82af9adc9701d25453634acbc0c68a0b8d89cabcba97d1"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.0.6/alius-linux-x64.tar.gz"
    sha256 "008724d42cb7fa815662ac9583616ff6de22d337ad68ccc6b07100c7fcb10516"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
