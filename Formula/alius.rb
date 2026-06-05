class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.13/alius-macos-arm64.tar.gz"
      sha256 "9507a164a39cffcd69a6b0361ae28a53a6e46b340d24ed3080c033670777144d"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.13/alius-macos-x64.tar.gz"
      sha256 "d3eaaaf50bcc8b20ce48c29e1451233b72321c84889ff0a0d08dfca165d9f4b6"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.13/alius-linux-x64.tar.gz"
    sha256 "1c0de19a25fc0e078f3ce079e78efc5713c0199997c39c154f717c7a26fbb033"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
