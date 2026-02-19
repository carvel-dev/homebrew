class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.59.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.2/kctrl-darwin-arm64"
      sha256 "25d3c21f588ee5d339f96da210ad955f3958ea4bcfe6b36e2cb473ddfce0e6d3"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.2/kctrl-darwin-amd64"
      sha256 "5da30f0f61837bf4df57c85ac455b4714351d4110fe9612763a2b1100e676691"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.2/kctrl-linux-arm64"
      sha256 "b5690024b2a11149c0ed3c4c07b4a070abae76bdb2eb102f0c042ee0ebd8e354"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.2/kctrl-linux-amd64"
      sha256 "38d0da769836ec9b4a556ed88937c2357928d701c708ceb034bd04fc94a77872"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

