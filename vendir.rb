class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://carvel.dev/vendir"
  version "v0.21.1"

  on_macos do
    url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.21.1/vendir-darwin-amd64"
    sha256 "579d661291f669a4f618c602e48d456693762e2ba23d4d8b64d12ceea05dd2cd"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.21.1/vendir-linux-arm64"
      sha256 "4e56b51db9d8eabc0f947a0f0f6e3699248a4f1e1522df785e3de894294bdaa0"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.21.1/vendir-linux-amd64"
      sha256 "7d9ffd06a888bf13e16ad964d7a0d0f6b7c23e8cad9774084c563cda81b91184"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
