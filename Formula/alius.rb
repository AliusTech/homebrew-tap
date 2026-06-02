class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.6.3/alius-macos-arm64.tar.gz"
      sha256 "f8afb7dc35f701473573f17c26ea97662a791d359989dbc5b6fc80d948c180d5"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.6.3/alius-macos-x64.tar.gz"
      sha256 "a95378dba623fe43358b126440dbd4aaf0a764b36c357145c0db07bc235a8210"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.6.3/alius-linux-x64.tar.gz"
    sha256 "0a828d13419691455c4e19b697fe34cdf908ad3ead80a9907d16efa7ccbc61c4"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
