class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.5/alius-macos-arm64.tar.gz"
      sha256 "1fe827c600cac02c0763e99fc50e3180d66f1f56491414ca6a21449d68d2d8e9"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.5/alius-macos-x64.tar.gz"
      sha256 "81784cecf4623df8d0f0f11b66b1f624cf894c7cc745370dcc4e7e1b5370fe8a"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.5/alius-linux-x64.tar.gz"
    sha256 "a6d581a4a0651100b01c269645f3fa9bfe84536ad5cc103ff3d321a653b04cc8"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
