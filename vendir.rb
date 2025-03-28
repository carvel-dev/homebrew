class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.43.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.1/vendir-darwin-arm64"
      sha256 "f4149b425cfb86b2e1e9130ffc15415d1d89dd19b01301e1143cab55f2c162ff"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.1/vendir-darwin-amd64"
      sha256 "34c1638e57d577f437fd55c206857422f8c52427f55352722161eb1d29fbcb6e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.1/vendir-linux-arm64"
      sha256 "89584179518d8810dd305607798d9c20fd3d97a9153735991f942a15d9f31d33"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.1/vendir-linux-amd64"
      sha256 "540d146faad93e1ba8962bb2367b6ad64ab504750ec7efd8a1a558fca4c7f392"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

