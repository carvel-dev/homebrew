class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.35.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.35.0/kctrl-darwin-arm64"
      sha256 "f7ec564d3f51307975f5412973a2a612ed2f060bf0147db4aed4e87f25ca51db"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.35.0/kctrl-darwin-amd64"
      sha256 "4fdd67d9c06f7ff43f9a38d1f182e01494cc62f081e3751d1d6d64da52e25ba7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.35.0/kctrl-linux-arm64"
      sha256 "7a0658d1809fa598e48e21f7599246c7c01c24a9ca6f70b13532c0852a6769b5"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.35.0/kctrl-linux-amd64"
      sha256 "7d2df9c83f68356d41cdc174c3baf53fdd0cc38e781c113ebfcb77d9d13ee234"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

