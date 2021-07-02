class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://carvel.dev/vendir"
  version "v0.21.0"

  on_macos do
    url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.21.0/vendir-darwin-amd64"
    sha256 "eac9cec8750e88e42369c98b4c82fb406e48c7856aee2f3cc810f4b77f203baf"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.21.0/vendir-linux-arm64"
      sha256 "f2559f0e870d625a7b1c0f9a5edd863b9f20f9c071811553f8e180fba0e933d2"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.21.0/vendir-linux-amd64"
      sha256 "e665435ead4335ba15baf604e9218fff39aa813cc2c9d181c7f379309aa98b45"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
