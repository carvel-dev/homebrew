class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.34.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.0/vendir-darwin-arm64"
      sha256 "aba42acf91edd8578b90ec92f99746e247c2abcfdbebb9c98d34fb21ce48c24d"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.0/vendir-darwin-amd64"
      sha256 "c2d9515a2eed7db6d1a25ea1d4ac4818bee0303ffc560402da4b8bc02112046b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.0/vendir-linux-arm64"
      sha256 "835ef62c15ee2c2f6487dfca4aca29cd314ea7dcf38fe53b3da28891c4bc065f"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.0/vendir-linux-amd64"
      sha256 "870cadae90f3b1637c47b864522c8cb8bb39d0c06ab7cfd7bf3bef8869ba484e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

