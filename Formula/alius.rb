class Alius < Formula
  desc "LLM Agent CLI - Software Self-Evolution"
  homepage "https://github.com/AliusTech/alius"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AliusTech/alius/releases/download/v0.0.5/alius-macos-arm64.tar.gz"
      sha256 "22f9538999c2973798dd4e63ab3ec2bbd8e352ae3e087c3aee39606ac7667216"
    else
      url "https://github.com/AliusTech/alius/releases/download/v0.0.5/alius-macos-x64.tar.gz"
      sha256 "c97a168931b62f72796b231f734d047d64fface58b93616cf141d48e88e554b2"
    end
  end

  on_linux do
    url "https://github.com/AliusTech/alius/releases/download/v0.0.5/alius-linux-x64.tar.gz"
    sha256 "b7732e7d340015afeb941e78d5aa610df5ed3dfe9f603a0af4f85f7f028cdfc2"
  end

  def install
    bin.install "alius"
  end

  test do
    system bin/"alius", "--version"
  end
end
