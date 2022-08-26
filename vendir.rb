class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.30.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.30.0/vendir-darwin-arm64"
      sha256 "e2f572ef63c0da957e22c87a263ac6058122cf269bad32976a4128c1d4c4b6c1"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.30.0/vendir-darwin-amd64"
      sha256 "5ee954207d6324f336341b2a81c0cb6147f08e7f892fbc52c28effc81bc2302f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.30.0/vendir-linux-arm64"
      sha256 "bbe6747135e0e4995a2378f1d556c0e0a20383391cf80dd4421748b028d3eb1c"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.30.0/vendir-linux-amd64"
      sha256 "eb66c8fd398925e2a2e68a2f65de3ca06207addd86cf207c07f7ad566dbe7b25"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

