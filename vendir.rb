class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.32.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.1/vendir-darwin-arm64"
      sha256 "38e84886cefd295ab2c67bb90849f26938d99d216cfc0b6a91a0f94db88c2436"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.1/vendir-darwin-amd64"
      sha256 "c2596303e8d4e460c2e06a99bcefb9da9c74da1752e0eb455f5e59a34eb21ffe"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.1/vendir-linux-arm64"
      sha256 "a65c2e5ae21d8994b06be4eef92ec34ee6f1b905ccc4e1705b227603ea7614b2"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.1/vendir-linux-amd64"
      sha256 "2030c324150b43f9c5af5b8b89a88f3787e20fd19cec4ec1d0fce3cf32432e43"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

