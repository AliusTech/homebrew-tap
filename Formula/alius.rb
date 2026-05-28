class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.0.3/alius-macos-arm64.tar.gz"
      sha256 "dc0629b3c12eb706c8dcde21319cb8ecd0a95bf01bda1f968051868b1b31553f"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.0.3/alius-macos-x64.tar.gz"
      sha256 "e37f9f40653135eb341e7dd08502fde3a971e5e93f3f57cd6c18917ce92a9af8"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.0.3/alius-linux-x64.tar.gz"
    sha256 "ef929b9830262b86501be4a227ec74bd48c46fc070968a7d89d7bdf0eeac700e"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
