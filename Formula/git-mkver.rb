class GitMkver < Formula
  MKVER_VERSION = "1.2.2".freeze
  MKVER_SHA256_AMD64  = "d26c32436c203eaead769ddc0b7f195dc19662dc29b1d32837392aca878fc108".freeze
  MKVER_SHA256_ARM64  = "442481a1b439272533ed5dc39bad0bf8d9c8e8b3dcf708df3b68e67112629cce".freeze
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  desc "Installs git-mkver from pre-built binaries"
  homepage "https://idc101.github.io/git-mkver/"
  url "https://github.com/idc101/git-mkver/releases/download/v#{MKVER_VERSION}/git-mkver-darwin-#{arch}-#{MKVER_VERSION}.tar.gz"
  if Hardware::CPU.intel?
    sha256 MKVER_SHA256_AMD64
  else
    sha256 MKVER_SHA256_ARM64
  end

  def install
    bin.install "git-mkver"
  end
end
