class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.36.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.36.0/vendir-darwin-arm64"
      sha256 "c977e8f4a350127bcd2bc5f05d33c3bee405f5dbe28928f1dc7af83489dcff40"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.36.0/vendir-darwin-amd64"
      sha256 "d8f07fdb150ca27809f758a36cd1d98dc5100fcb361008b2ea00fff823195f0a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.36.0/vendir-linux-arm64"
      sha256 "8a33d121e0fd9a3d841b9e4894be6d01e5d7376313ddf635346dedafb45ed374"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.36.0/vendir-linux-amd64"
      sha256 "ec42b2ae79bc06ecb1b5676937879e90f38894527e0d4de0ff6e764833f86528"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

