class GitMkver < Formula
  MKVER_VERSION = "1.3.0".freeze
  MKVER_SHA256  = "80d2521f8d00ffb6578b0abe748006428166906eb06d49a2be74f8818022c162".freeze

  desc "Automatic Semantic Versioning for git based software development"
  homepage "https://idc101.github.io/git-mkver/"
  url "https://github.com/idc101/git-mkver/releases/download/v#{MKVER_VERSION}/git-mkver-#{MKVER_VERSION}.zip"

  def install
    # Copy files to install dir
    lib.install Dir["lib/*"]

    # Move the git-mkver binary to the bin directory and make it executable
    bin.install "bin/git-mkver"
  end
end
