class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.5.0/alius-macos-arm64.tar.gz"
      sha256 "69fdb030bd868663043154ca9fcab8954c959292b3b5e68ea11da4c0b02ff653"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.5.0/alius-macos-x64.tar.gz"
      sha256 "7d1bcf212a961b66b5d061cf96ce1582133b2cc11d25347d0346990fbf2e3571"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.5.0/alius-linux-x64.tar.gz"
    sha256 "f57157314198a7aab63c9a68eab91e578745c893c34103cd79503068531b604e"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
