class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.4.0/alius-macos-arm64.tar.gz"
      sha256 "7aca01bcb80afbac04d833692fe00927d5a16da71475d1a944b0e9851383f9ca"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.4.0/alius-macos-x64.tar.gz"
      sha256 "51bfa8013a7868089cdeb011a62dce4824196d2a9c908c77410edb17f151d86d"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.4.0/alius-linux-x64.tar.gz"
    sha256 "d7e6b057095ee4976e9cb71dfc8014fa8c3726057404bfbcf25166f12902741f"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
