class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.11/alius-macos-arm64.tar.gz"
      sha256 "4a5d8598dd75fd8ffca0bd74ee84a42ab2d635a8e0db0cf9ce5d7165a710166b"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.11/alius-macos-x64.tar.gz"
      sha256 "a5f669a95b5e4fe13a264965c6b899f6d3c64f8d4290590c9c33b233ac5226bd"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.11/alius-linux-x64.tar.gz"
    sha256 "382c7d95da1915e725cdc2a57d36c3adfa11ca4e49621b8f266a484a9b0fd21d"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
