class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.59.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.6/kctrl-darwin-arm64"
      sha256 "a3679119576b4517bdd00f8b7d3b87678b364f8dd441b27d37518a63325b0234"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.6/kctrl-darwin-amd64"
      sha256 "249d054e7e790307cfa8b04f8655f1deac93c570a6533d521ab6b057a4b2c4ae"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.6/kctrl-linux-arm64"
      sha256 "10fc4961e1188defb80bd000d01ad463065645a96a87b30a90abf10c28c84704"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.6/kctrl-linux-amd64"
      sha256 "c4b0aa1985d4b00ff60e89e7e2ef3e11349f8878878f406c33febf8459b5dd2d"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

