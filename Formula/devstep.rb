class Devstep < Formula
  desc "Development environments powered by docker and buildpacks"
  homepage "https://fgrehm.viewdocs.io/devstep"
  url "https://github.com/fgrehm/devstep-cli/releases/download/v1.0.0/darwin_amd64"
  version "1.0.0"
  sha256 "6de2152ef3a2d4e6c1976e6d6b99635919fd94954d3f38280333425ce2245753"

  bottle :unneeded

  def install
    mv "darwin_amd64", "devstep"
    bin.install "devstep"

    # Pretty hacky, but does the trick for now
    system 'sh', '-c', "curl -sL https://github.com/codegangsta/cli/raw/master/autocomplete/bash_autocomplete | sed 's/$PROG/devstep/' > devstep-completion.bash"
    bash_completion.install "devstep-completion.bash"
  end

  def caveats; <<-EOS.undent
    WARNING: OSX support is experimental and has only been tested with VMs created
    by dinghy (https://github.com/codekitchen/dinghy) using docker-machine's xhyve
    driver (https://github.com/zchee/docker-machine-driver-xhyve)
    EOS
  end

  test do
    system "devstep", "--version"
  end
end
