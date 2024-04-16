class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.40.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.1/vendir-darwin-arm64"
      sha256 "32934469836e03b11dd519ac5979dbea7213dad3e7c7b015c92a38a1c3ccdc46"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.1/vendir-darwin-amd64"
      sha256 "842ad455037671e0b27149668a2563cd21b96864af1e1df85b0ed3bbba730a4f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.1/vendir-linux-arm64"
      sha256 "ee0d7571f365101046448055aa7d1577a80074fccae5836370c0725371493b97"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.1/vendir-linux-amd64"
      sha256 "bd8ede60750471783b345ba969f6ccd3bf59d041ed093a4dea00f9bffa03376d"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

