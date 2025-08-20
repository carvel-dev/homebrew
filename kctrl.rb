class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.58.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.58.1/kctrl-darwin-arm64"
      sha256 "89f2c5fef2067295684e34592c4c25a1e3b7f88d4fb529310007d001098f96a9"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.58.1/kctrl-darwin-amd64"
      sha256 "85f6ab96d7db39384d78d8998efbe8652063405e76792f1163e9a61a52c8caf3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.58.1/kctrl-linux-arm64"
      sha256 "a9cb74f12effb45c56d16b56551aaf50e96fac0359b5ace6ec8e40d370762ac8"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.58.1/kctrl-linux-amd64"
      sha256 "978fc078d53a827716dacde7483294d1265c3d42ace0c2582df62b5c38dd17ae"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

