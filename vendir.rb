class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.43.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.0/vendir-darwin-arm64"
      sha256 "ffa520a0604cb2831937c232bd89bd4e27afc12f16459f35e6f92cb69bd08d5a"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.0/vendir-darwin-amd64"
      sha256 "693d956011994b5be2491f7534faae1cb0a07cfed911cf5b9e0f3da65db36707"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.0/vendir-linux-arm64"
      sha256 "0895efdc3fe36f37035ce96169e8cc335a103adcfe02092fcc29f514be8867e7"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.0/vendir-linux-amd64"
      sha256 "3d31f00efc0a11a8dfcf662d45a120d18f99105d1502bbfe12a6cbd9d0b1f570"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

