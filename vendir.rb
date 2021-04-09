class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://carvel.dev/vendir"
  version "v0.18.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.18.0/vendir-darwin-amd64"
    sha256 "0dc18b75cb03edb09abf452338a146e433106a9ba2492c849556f04894135712"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.18.0/vendir-linux-amd64"
    sha256 "d36b6ef34cb43966ebf7404edb83b30d9f819b62ea5bc08b1dadb805fd72ce1a"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
