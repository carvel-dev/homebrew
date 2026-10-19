class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.46.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.3/vendir-darwin-arm64"
      sha256 "52b3c224329c11f7189847fc9687a7e9f319626f893dd9a8bcc3704dbc89cc25"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.3/vendir-darwin-amd64"
      sha256 "39b1025eb03142790d5b8d262edd1c9dd5987ae97a81d0c5c4affb13850caccb"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.3/vendir-linux-arm64"
      sha256 "821a9da837a017270743597a2e9b796d2d256385ad85450d6c5d89f05dd5aac9"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.3/vendir-linux-amd64"
      sha256 "5af8823ecc67b3ce2359bb0b70e72a5dbd765135722ca0ff42c16bc4d7409847"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

