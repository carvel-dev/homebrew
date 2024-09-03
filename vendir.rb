class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.41.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.41.1/vendir-darwin-arm64"
      sha256 "993ae33df2e722c327aff4807eeba0e08b0c9f3bd996e67caa89c503c6a8bcda"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.41.1/vendir-darwin-amd64"
      sha256 "ad63b667c7756cac7804e080861b3e794fbfc83ba662f5461928c30fe890a828"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.41.1/vendir-linux-arm64"
      sha256 "58facd06bae6ffc858b348da9dcc0b032d030a6a31767fea6f9166658d7a61e2"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.41.1/vendir-linux-amd64"
      sha256 "f878f3e16b702c47e42b2215a670d65028bc0158643ed28a2dfaa6f37b1344ac"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

