class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.45.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.4/vendir-darwin-arm64"
      sha256 "e0e3c327888c5ed6bec69a8cfc8a8fd978e2790078b42ee48d3015be5e499899"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.4/vendir-darwin-amd64"
      sha256 "39042d2ce50e2277ce262596943ebaba4a94302bb1763bde75255029018d731e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.4/vendir-linux-arm64"
      sha256 "25847a9d58c44cca6f486d7c31199a2a2e15bc1be1e8adafae66a01411ea222e"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.4/vendir-linux-amd64"
      sha256 "b71189f46b26facc6d5baeae8047fe49afd899f8125818275241a084aa2c08a1"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

