class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.59.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.0/kctrl-darwin-arm64"
      sha256 "25035cd7f32bcba588ee2f96aafa635ddd8963dc1cef4b5096eae4752119620a"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.0/kctrl-darwin-amd64"
      sha256 "47cbb16acae187d11bdc6af8612f9a278f367033cb5e4d459ea5336e3c7a7061"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.0/kctrl-linux-arm64"
      sha256 "f78201bc2f56c3010a05e6cd2bea9cbb39ad2249ca38a40cebec19ea5eb058b4"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.0/kctrl-linux-amd64"
      sha256 "96d098ab5e897acba8e7b36f6e9be731b53517cfc3f34380c5f3f24a7ac2a8dc"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

