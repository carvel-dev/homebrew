class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.42.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.42.0/kctrl-darwin-arm64"
      sha256 "01fe076502051a2ac5cc9d95afb1e4dc2dcdee9ccac89033d19a85f741d3240b"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.42.0/kctrl-darwin-amd64"
      sha256 "558fe9c73356757c377bdea394562868a41f37993f58814353bc389c73cc3960"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.42.0/kctrl-linux-arm64"
      sha256 "3f2ceffc77ed95df76fcd013f95991c4d915014029dec5e06d5883e016881074"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.42.0/kctrl-linux-amd64"
      sha256 "04a8a9f6765580a4b942fdf04cb1111ffed917efc90e89ee0a73e7734be23444"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

