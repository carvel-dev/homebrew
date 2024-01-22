class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.39.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.39.0/vendir-darwin-arm64"
      sha256 "91ecf04ad5cdfa0f8839dc1430da7a4da665f7cb88c64c0c72202f6db261e651"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.39.0/vendir-darwin-amd64"
      sha256 "90ae82718c1072831f3097bdb031d5a897cc9f2f8334e2e1d7f35e35d0abd84f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.39.0/vendir-linux-arm64"
      sha256 "012531a2f1a2de8bc89f1623edfc40a7ac5aee421fe609085278fb9e287f1cdf"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.39.0/vendir-linux-amd64"
      sha256 "feb2836153508adfb6fd33c127e466c9ce26577678e93a252be2fec445f4501f"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

