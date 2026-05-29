class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.0.4/alius-macos-arm64.tar.gz"
      sha256 "0e916d708a16d67afd9afee99dfd4fcd24f61ab12ae7074f3ebed3e236e87654"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.0.4/alius-macos-x64.tar.gz"
      sha256 "a53980915caa9396deb32e8a4651e577214e14d76311dbbbdee500b8d841d3a7"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.0.4/alius-linux-x64.tar.gz"
    sha256 "d4dcc639750bfb7afe78d648e082c16477d09f86dbd5972c138187139317b7f1"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
