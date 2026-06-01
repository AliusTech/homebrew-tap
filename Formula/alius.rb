class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.0/alius-macos-arm64.tar.gz"
      sha256 "fe0e236f32068a13e467489371ab2dfff9311b0cf90867c65dd388edfa29f1ac"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.0/alius-macos-x64.tar.gz"
      sha256 "2e8cae5ad7de0579ccbc45cbd8c9f177e86e7dde500138ed8f4d7d20b0ae14a1"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.0/alius-linux-x64.tar.gz"
    sha256 "61b06d33d8bb116420ce6463d49d65e53e4504ab7997e748adba476abbfe8065"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
