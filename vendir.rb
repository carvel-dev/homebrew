class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.45.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.0/vendir-darwin-arm64"
      sha256 "6ff67773916bf1587533daf912a24d0fc5c5914e90aa6cd9099b22a480cd0a53"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.0/vendir-darwin-amd64"
      sha256 "4bce3c5341f1f1566fde617bfabaee16b26e26f6d0e8b4394780a03d57b248a5"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.0/vendir-linux-arm64"
      sha256 "f2b517cfa1a843ffc7b9beb37146ffd8157a5c842138c4f6a5728f708115dbfd"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.0/vendir-linux-amd64"
      sha256 "d60ad65bbd0658d377f2dcf57b3119f16c5a3a7eeaf80019a3d243a620404d7e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

