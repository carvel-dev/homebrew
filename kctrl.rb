class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.54.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.54.1/kctrl-darwin-arm64"
      sha256 "f5c1c6b15e3118bad2e6db3229a32fe853b68ffb6f5572f17cdedab4146fb060"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.54.1/kctrl-darwin-amd64"
      sha256 "cc8282b7919cadab1032d68450d5c5a965b8c4b3f8f393aaf4f39cf2eeee8204"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.54.1/kctrl-linux-arm64"
      sha256 "157728fb39e5f047dbfcf6b28fd84f6075da30751dd0a363e56f3622b7f054fa"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.54.1/kctrl-linux-amd64"
      sha256 "8105ca2150436848e76327933f1ba7703a3197c74e624a712d336866de92072a"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

