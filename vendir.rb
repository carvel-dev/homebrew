class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://carvel.dev/vendir"
  version "v0.23.0"

  on_macos do
    url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.23.0/vendir-darwin-amd64"
    sha256 "aef3233128727c01ffac6561533c9f60a49307f41decc1baa18688a4a250b15f"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.23.0/vendir-linux-arm64"
      sha256 "e255db28ec90f7252837e2b8b07f03582be0775d2733684df63beb77a73c9dc5"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.23.0/vendir-linux-amd64"
      sha256 "c6a65e7e8e589e25bf5554e9575ab247e55ae71920d3d366ffd84b1571fe34ac"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
