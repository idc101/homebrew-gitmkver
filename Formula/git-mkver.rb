class GitMkver < Formula
  MKVER_VERSION = "2.0.0".freeze
  MKVER_SHA256  = "0b1faf04a5fa410be0607658affcf73f1fab5d6a7a0b7d03d3ab82bd0e4f245c".freeze

  desc "Automatic Semantic Versioning for git based software development"
  homepage "https://idc101.github.io/git-mkver/"
  url "https://github.com/idc101/git-mkver/releases/download/v#{MKVER_VERSION}/git-mkver-darwin-universal-#{MKVER_VERSION}.tar.gz"
  sha256 MKVER_SHA256

  def install
    bin.install "git-mkver"
  end

  test do
    system bin/"git-mkver", "--version"
  end
end
