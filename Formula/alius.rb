class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.4/alius-macos-arm64.tar.gz"
      sha256 "6039fd9f7e8e2c99f051a78dea1f6c13d2fe351d0bc3016eb7eec508a76d8c67"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.4/alius-macos-x64.tar.gz"
      sha256 "d6646c03b1b0d291e2c911acb25c8c1bfc04b3e68576baba7b08428364db52c9"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.4/alius-linux-x64.tar.gz"
    sha256 "336fd41a19fc4529eb31c7e521e990cf184cebde4de8b9e01f0c0c05da56557b"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
