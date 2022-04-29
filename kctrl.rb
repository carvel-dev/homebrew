class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.36.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.36.1/kctrl-darwin-arm64"
      sha256 "ed8417239c2d68d8f88f5bd9c54aa0dc9367a46df12f897d1cef14b1ed080390"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.36.1/kctrl-darwin-amd64"
      sha256 "4f4037ab7537db4a4518354dd0372ff5aedeea5491a08ddcc23aa477274e15a1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.36.1/kctrl-linux-arm64"
      sha256 "b25baf6de16d3d0017b03336d7c5b4e983ff0ec8dd2fbb45bece11b13a884cb6"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.36.1/kctrl-linux-amd64"
      sha256 "d68f7400483950c0fc3190e637d2ecd644752ba577ad0164e05b575ff8c135f0"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

