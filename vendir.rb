class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.37.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.37.0/vendir-darwin-arm64"
      sha256 "f9a263959b8574d1f3f67bbf4ab2459dd9296903f3e3bfe1b4e90fa709886e5f"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.37.0/vendir-darwin-amd64"
      sha256 "0ca7ccb1dbc277b52547608988e89c98c70fa11cd7a409bb4be370383aa3a8ec"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.37.0/vendir-linux-arm64"
      sha256 "7dde14730aa5a58511fc5b95f61162892ec97f87c9a57c01ab91d1f9f3d7aa74"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.37.0/vendir-linux-amd64"
      sha256 "f1472bf7995506830fa79473f0ae406ea3885e0881fbbb096240efb1b053dd15"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

