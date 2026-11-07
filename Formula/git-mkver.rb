class GitMkver < Formula
  MKVER_VERSION = "1.4.0".freeze
  MKVER_SHA256  = "80d2521f8d00ffb6578b0abe748006428166906eb06d49a2be74f8818022c162".freeze

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
