class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.0.7/alius-macos-arm64.tar.gz"
      sha256 "79f960d3758abdc254e2a772c35a82e6abc320ea9fb7cbe5f878d37936d2c134"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.0.7/alius-macos-x64.tar.gz"
      sha256 "dbbabfdbe50b7f48556db044069f0ca4ee2125997cb18f3cef8f4e3efade2a29"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.0.7/alius-linux-x64.tar.gz"
    sha256 "db6c240fea79141f8c87096d3b3172c88eb3457597260f5354fa5bac7051e4d9"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
