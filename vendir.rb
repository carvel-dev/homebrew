class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://carvel.dev/vendir"
  version "v0.22.0"

  on_macos do
    url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.22.0/vendir-darwin-amd64"
    sha256 "66cc6519c924897425c4750c197ea4c7f4e07e9275789f6a2f1a0b7db437c636"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.22.0/vendir-linux-arm64"
      sha256 "d5aea17e21079f4dd2f766b840fb5926c70acc2435965f4bd239f01e347ed620"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.22.0/vendir-linux-amd64"
      sha256 "951b75467ac8be6022efe3584815ef4ea285a0e3b591eba7f775c55c4947c2ed"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
