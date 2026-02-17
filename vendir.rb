class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.45.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.2/vendir-darwin-arm64"
      sha256 "01b3e5b922e8771cbc0bdb4c75acb3933327f7a63779bb8923f05de18b49fab6"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.2/vendir-darwin-amd64"
      sha256 "c75abeca04cb9b0fabcb084b87fb465b3eb462a85bab1baab4853bf9a4c7ccc3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.2/vendir-linux-arm64"
      sha256 "8fc36145ca85712f1d6d6b959d6240a7d1d5f6a6dd3850bad9ae848c65e42c56"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.2/vendir-linux-amd64"
      sha256 "ecd053b031fdebfe0486b263a7071320b033f60b6d9e6c6b74ad681f2d7068b5"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

