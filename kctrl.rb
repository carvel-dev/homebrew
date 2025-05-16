class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.57.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.57.0/kctrl-darwin-arm64"
      sha256 "bccf148ab53aaf1b5547efb8caa75facb15fd363c3c5d070d9d8bcfa426ce6f6"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.57.0/kctrl-darwin-amd64"
      sha256 "34175c88f2d14cadced624906a1c31581e09530b3ad1e6cea854e5a0c9ae5276"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.57.0/kctrl-linux-arm64"
      sha256 "9eb6d6903c8ea4fd474d2668805627b9d22c1bf750dde2e842e07884e37af615"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.57.0/kctrl-linux-amd64"
      sha256 "35d96da8f8076efbb245c8cb6fed350e748789c670d34e792d1258584c56a8c1"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

