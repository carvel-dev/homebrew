class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.28.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.28.1/vendir-darwin-arm64"
      sha256 "4564811afdd85139ff382a3e6637ac2e727b11a6159e75e3c840e07d1033db9f"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.28.1/vendir-darwin-amd64"
      sha256 "47cb212a22ac629c50ca6653f7207ff88e8283c2f07f2cdefdbfd91a16390f36"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.28.1/vendir-linux-arm64"
      sha256 "fc2cbbf7ddcc293d7d432a8d69864aeb3f8caaca6ce16d01c0c4ca579f0a19b3"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.28.1/vendir-linux-amd64"
      sha256 "9cf05073b88ba702c3ed5be67361fefecef3d34cc16fea684e0b7c09b7b18788"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

