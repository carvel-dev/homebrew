class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.40.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.1/vendir-darwin-arm64"
      sha256 "34974c9a6a6e32eb21adac47ce72df6340d36886b5ebe8b5937444a0d7ecc529"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.1/vendir-darwin-amd64"
      sha256 "3941cf7b7ba1219d574b93ce1bd8b77928ad9ff9cdf8e2debf3ae11ae695792f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.1/vendir-linux-arm64"
      sha256 "43e98922103ef30995a11bd4491b138b635c9b7bf17f98475fb5a06c87392e1d"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.1/vendir-linux-amd64"
      sha256 "d7c602d8882085be78cd02a575a6c3b437bb2fa1ff1067712f593d8cf05c94fa"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

