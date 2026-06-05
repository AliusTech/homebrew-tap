class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.15/alius-macos-arm64.tar.gz"
      sha256 "6e26edfad34b25af3549d216830212e25ffb4f568a9e15f3e78d5fdd4658b063"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.15/alius-macos-x64.tar.gz"
      sha256 "ea330895b36e178fe8277c680683e1817072cb213accb24ecb349364274c97c3"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.15/alius-linux-x64.tar.gz"
    sha256 "7af0f934291450de33ef662ec46f49ea3f816f894b6dd68c2b7a937056a4dc3e"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
