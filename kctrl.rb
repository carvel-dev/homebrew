class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.1/kctrl-darwin-arm64"
      sha256 "02470ba400496bb7e64a547b6240749784ea77f6e4e64743cd8dd2aca481b57d"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.1/kctrl-darwin-amd64"
      sha256 "f3213a846d008b2026fa4ed152a34c64fb0e8fe3b6c504d2d780c727139e0e2c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.1/kctrl-linux-arm64"
      sha256 "45d1fd3d5f9f1b8d8ea8ee33a605ca9e068cf8f13b35fe36a47f1b5d4d71bc0a"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.1/kctrl-linux-amd64"
      sha256 "b8dc24b66d13c1f3d8d46b4da50ad78660a309e7b705c8abf8320e26dc6e0b0f"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

