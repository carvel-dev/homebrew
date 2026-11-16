class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.47.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.47.0/vendir-darwin-arm64"
      sha256 "08749252b25280e4fce50d23036caf562ac7c3cfa600eed7c134f4762a6b5cde"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.47.0/vendir-darwin-amd64"
      sha256 "01d5009eef5ccd074b29acaf4d6037ac8e02849f55fc409e7e020cb75da60eec"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.47.0/vendir-linux-arm64"
      sha256 "60b5331f0f68e374df3e283744ca7b28b69015d388c432a4dbd14d3202ec6fce"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.47.0/vendir-linux-amd64"
      sha256 "9d1099f48f04882a716934178bb9ba8f2373c96b0bea536540106757bc4081e3"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

