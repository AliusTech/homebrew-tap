class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.8/alius-macos-arm64.tar.gz"
      sha256 "dbaf05d34ff3014f0cdc47082e626911b6d688703a64bfa571707cf864fd1786"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.8/alius-macos-x64.tar.gz"
      sha256 "b1fe1af4dc3597c8a1076ae72d4271c701b4c2395ef6453b820b93470fa52b0e"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.8/alius-linux-x64.tar.gz"
    sha256 "2d1bd6fcb3adccfb57c46acd7cf744bc9fb0f1d9af47aad83111e7e026d7dbee"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
