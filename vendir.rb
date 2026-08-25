class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.46.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.1/vendir-darwin-arm64"
      sha256 "b0ed7ffa337b4964e5a0b865b786e97b75e7777fb4a289f06193671b81e320a9"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.1/vendir-darwin-amd64"
      sha256 "133871a31862e2ea14c55e7162d5227b3b9b54774376faf2aea3f8802dd5bf2b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.1/vendir-linux-arm64"
      sha256 "6f9b8d829fdead89b40feca901c5804826db94121abecdc6808052c3252e847b"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.1/vendir-linux-amd64"
      sha256 "96318c8f2f6ed8b0853b5fac50e22e400af6d8fb2699835e5a8b1663db65c6a9"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

