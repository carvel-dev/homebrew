class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.53.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.53.0/kctrl-darwin-arm64"
      sha256 "70a2cb40122f4ac750fb21d9e741e056344fcc463e38c7b9981f5a2fdd74bef6"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.53.0/kctrl-darwin-amd64"
      sha256 "0bee8254d2055bc833a197c777d2d79efc06c675c821da196765dacdae5ebeb0"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.53.0/kctrl-linux-arm64"
      sha256 "0e8fde1c937c1ad49dd42de8f4a9a41ccbeb3514ced8c83ad15dc04e3f2a9a96"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.53.0/kctrl-linux-amd64"
      sha256 "9c33cfaae971718221c44feeca85faa703e7399f2e9d3fc98c9b1160ee765fb3"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

