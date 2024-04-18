class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.51.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.51.0/kctrl-darwin-arm64"
      sha256 "e02077e560747ee9dbfa2edbced39bd4fdcab756a9546062befa41641f9e71d8"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.51.0/kctrl-darwin-amd64"
      sha256 "015a3f9807852cd3d1ca4d6f949f89407e8f44a8ba196b463162a97dc2300b41"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.51.0/kctrl-linux-arm64"
      sha256 "bdb68052e1791552bcb23231d0fefa45e98daf278555393a955bcbf1ebcd91ee"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.51.0/kctrl-linux-amd64"
      sha256 "2de0eeada145888f8ac911c1f8a4e1d1b6b4202afd63cbca7f81bdc50d110b72"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

