class GitMkver < Formula
  MKVER_VERSION = "1.2.2".freeze
  MKVER_SHA256  = "d26c32436c203eaead769ddc0b7f195dc19662dc29b1d32837392aca878fc108".freeze

  desc "Installs git-mkver from pre-built binaries"
  homepage "https://idc101.github.io/git-mkver/"
  url "https://github.com/idc101/git-mkver/releases/download/v#{MKVER_VERSION}/git-mkver-darwin-amd64-#{MKVER_VERSION}.tar.gz"
  version MKVER_VERSION
  sha256 MKVER_SHA256

  def install
    bin.install "git-mkver"
  end
end
