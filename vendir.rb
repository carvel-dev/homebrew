class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.29.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.29.0/vendir-darwin-arm64"
      sha256 "ed9613fccee5cfdbfa6a7293bfaa6fef3305c030133fd386efdc22ac651bef71"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.29.0/vendir-darwin-amd64"
      sha256 "f0d84f30c5fe34fb15554db4e27768a3738f0f697fd35b3186499a2ab3607205"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.29.0/vendir-linux-arm64"
      sha256 "2dca412abe68e583e447e75c557957e848b04ef80efebc9aacd19bb369368752"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.29.0/vendir-linux-amd64"
      sha256 "83b1cd15c6e4f69dc8daed9e38a202f16be7c6130a41adfbf6a5233da6148cb4"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

