class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.9/alius-macos-arm64.tar.gz"
      sha256 "91b4da20f9907577d8292f47363c9b17ac08562debc9fddc4ab591d1e6f939a5"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.9/alius-macos-x64.tar.gz"
      sha256 "743dd888ea7ef2461c14704927368e8b02abbf7d93eb6e4433f725d1b95a1465"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.9/alius-linux-x64.tar.gz"
    sha256 "f6b0138dd77a7018f9fa92e6ab73def9fa4bb988bff31a392257fec0928a6f6b"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
