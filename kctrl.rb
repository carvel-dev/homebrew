class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.54.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.54.0/kctrl-darwin-arm64"
      sha256 "2c81fc714fabfebaab8c59533122b27639dba37c3608fa96cd1f8a59143b24d8"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.54.0/kctrl-darwin-amd64"
      sha256 "eae250c163e61f0ffea6ebb749280fcc0893e26f9509989d60dbe90675001019"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.54.0/kctrl-linux-arm64"
      sha256 "6298cbfa50209ec88f835f32f2a360211162363d8a56bc185b5990976641cfaa"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.54.0/kctrl-linux-amd64"
      sha256 "f06df7375eb4edc4a7ddb194a0c608d627efa2387faa539552d029d9bd901b9e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

