class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.34.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.4/vendir-darwin-arm64"
      sha256 "d739751d1133636589f4fe9cd988ec6e83543926ba0195cc70a6b609e2bf67c5"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.4/vendir-darwin-amd64"
      sha256 "67da79a99c74bd1c8e322216547c4c796a6da044d66bb69d6d0a102d8221896e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.4/vendir-linux-arm64"
      sha256 "fb9deed2eb57cfcc9dcb4167a4d3abda0bb4d754a964c69309f099a2203c555d"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.4/vendir-linux-amd64"
      sha256 "7b398b817983cfdfbdee58432784743d336f367b532d3bae1f28ca641e62f357"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

