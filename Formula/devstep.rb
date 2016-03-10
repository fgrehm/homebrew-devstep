class Devstep < Formula
  desc "Development environments powered by docker and buildpacks"
  homepage "https://fgrehm.viewdocs.io/devstep"
  url "https://github.com/fgrehm/devstep-cli/releases/download/v1.0.0/darwin_amd64"
  version "1.0.0"
  sha256 "6de2152ef3a2d4e6c1976e6d6b99635919fd94954d3f38280333425ce2245753"

  def install
    fail 'Unable to install'
  end

  test do
    system "devstep", "--version"
  end
end
