class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.58.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.58.0/kctrl-darwin-arm64"
      sha256 "bc75e2c25ff2a01ba86a5889746887642bfb7fab27fa58614d3ae6af57196929"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.58.0/kctrl-darwin-amd64"
      sha256 "e6f2cf55d12974f7fff268e47e1f0d924f9a69b3b8f78589b6941f908b4da0fe"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.58.0/kctrl-linux-arm64"
      sha256 "f253f9accf118dfeaabbaffc71d9c7bcb5f4c0e87ba4bd4bfd95edd7ab0af700"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.58.0/kctrl-linux-amd64"
      sha256 "ede5d31ac4dfe73e82364cf430ef5016de309185606c981cbdbdbeab42589ca0"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

