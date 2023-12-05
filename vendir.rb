class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.38.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.38.0/vendir-darwin-arm64"
      sha256 "a9dba10fa543beedbf2144dd311d9c4014bfb992bb3f988f879ce44327cd7738"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.38.0/vendir-darwin-amd64"
      sha256 "a57a086d5153d00c7812b82227ab6f4eed7da3b7edae4c32a03a61a9fe114030"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.38.0/vendir-linux-arm64"
      sha256 "88e3588632f58f44f31d3fa19f60d4aad8ea0075b6fc68956a9d061d8de2442d"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.38.0/vendir-linux-amd64"
      sha256 "49076dd93ae931ac0d341d81e51b6fdb2288c718cfda8279b78e31c6d389da5f"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

