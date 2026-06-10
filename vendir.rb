class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.46.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.0/vendir-darwin-arm64"
      sha256 "e136160aa642231c6eb1df25cbe3e57e5f3848ac0a7e7de57bbc3249fdbd800f"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.0/vendir-darwin-amd64"
      sha256 "5b417c837b0134fabf2c4a322db054eacb8cfbe8d0e8cbbb86afc7e4f0d625fd"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.0/vendir-linux-arm64"
      sha256 "f80a27f1247ad4353b6054ca9d7e13e2511bf70c0e28d85bc314d2177ec2b0d2"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.0/vendir-linux-amd64"
      sha256 "878f3c77cae21b9b63d0ea6c11454c0008d41652d2eb3d1844fdcf69cca6ae9e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

