class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.14/alius-macos-arm64.tar.gz"
      sha256 "da7e39b5d4f17ac8b1a4ab5d48ec88f6a8f08e8cb8daa6a6cdc2dd79ce1e0482"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.14/alius-macos-x64.tar.gz"
      sha256 "21f4186c52346ddf99aad0e6873792d63e812724fbfefed85142643d07ec3f16"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.14/alius-linux-x64.tar.gz"
    sha256 "bb79db7d8a18b92bf2c81d74dc45651fb2f62d1f6c12952824489191b620927d"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
