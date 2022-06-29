class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.28.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.28.0/vendir-darwin-arm64"
      sha256 "0d2d7067bd99fd88b62634a386e6f09050256f1a43216ed96fa20b2c0c7e7ce1"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.28.0/vendir-darwin-amd64"
      sha256 "39a703e8fed93334e075ba6d25456a2320e2dea9c1d144afebc7c081e707733b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.28.0/vendir-linux-arm64"
      sha256 "54731101d07342711ceeecc4c1ca1cf1c194c997658757d88740bbc2c41ced07"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.28.0/vendir-linux-amd64"
      sha256 "f4f0c815e5bf1f5b3265e020fd6ed29f613f0d2171cfe9c03f92ded9ff83f206"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

