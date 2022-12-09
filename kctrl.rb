class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.43.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.4/kctrl-darwin-arm64"
      sha256 "ee5261c5bf4cbadea2e97753ec7c58b2213b394fdb879d31fb5fc0ac688a85c6"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.4/kctrl-darwin-amd64"
      sha256 "a595d2c98b661914bc58e2b87db6ed1a22c931096fc1029c32fe0ed6d65894c2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.4/kctrl-linux-arm64"
      sha256 "fc005f37a50e19bf58eb1a810146dc1c598feb0c5b26248e117d4ec239a69798"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.4/kctrl-linux-amd64"
      sha256 "47b54277d730f24e1e084ed4ab031a4c02542da7568c97675c0abbc31a0971df"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

