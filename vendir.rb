class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.45.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.1/vendir-darwin-arm64"
      sha256 "a859539a021affa7962459556f57e2d8c8e353a9bff1e6673410d292d10033a2"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.1/vendir-darwin-amd64"
      sha256 "ea3e5091b983b79a09f9a0c1fc911d65a2eec4cd7ed86d96735ad2ec129bba40"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.1/vendir-linux-arm64"
      sha256 "9aaba37eeff49a819ab6fba832e184c41069af6ce5e5817d63691a240fda6fdf"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.1/vendir-linux-amd64"
      sha256 "1c2911750ac774d2806d67694788c55e66dad39b38761ea10da0a86283e9ae96"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

