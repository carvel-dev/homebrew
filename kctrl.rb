class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.37.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.37.0/kctrl-darwin-arm64"
      sha256 "bfea78aaf40e3929c2825506ca33859e016b8cd568ab303d1f909e01f3bed197"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.37.0/kctrl-darwin-amd64"
      sha256 "66d152a7264223c652bf3102e8badf1867fc4b46a568fbdf656db8bf4d4f08b1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.37.0/kctrl-linux-arm64"
      sha256 "3916b352ede8219d4fed842a3805f4f3ee870c83bfb0f9507740767f930ba488"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.37.0/kctrl-linux-amd64"
      sha256 "0a861d98bb89d0bcbb8c80519397fbc9bcdbffe706b06054def9fd15c251ba1c"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

