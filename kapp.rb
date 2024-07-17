class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.63.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.2/kapp-darwin-arm64"
      sha256 "7b747f0107481b3b9faf8d2cac29126fb1a2aeb028cf33a551c67d8e7a6f075f"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.2/kapp-darwin-amd64"
      sha256 "65084088d51fa0a43a31c71da175e8158844f776e2d2731f89cc51787823ed2d"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.2/kapp-linux-arm64"
      sha256 "f499fa48f42509e8e4e492c5f68126205319529e34b98249adbfb082a31b37db"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.2/kapp-linux-amd64"
      sha256 "d760b51d8e9e3f5d0847e84fad05a51d1415fcfe309e10f885edd51d3e8c1301"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

