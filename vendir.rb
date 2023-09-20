class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.34.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.5/vendir-darwin-arm64"
      sha256 "1cf4e2d9e6a353f6b896544520af20af54a3ae5ecc6d2bc4a21c33050400f032"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.5/vendir-darwin-amd64"
      sha256 "87a46c87c2154a8f10289ca91d452a6e5d73864410ff8934c52e762f60c5a1b4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.5/vendir-linux-arm64"
      sha256 "85409ee7dc50deeb7785c38a4c97fd58db5efe3922583db293b2f53e996af45a"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.5/vendir-linux-amd64"
      sha256 "6bc89c12248f87e6c466355990f1b9cdbdddc0c04fa4c652ce2498dd90678ffc"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

