class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.38.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.38.3/kctrl-darwin-arm64"
      sha256 "ff998a2788d136d41cfd786aa35afe5c7ad15d207fb43dd4fd7f66498d3e50fe"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.38.3/kctrl-darwin-amd64"
      sha256 "063963dc5957426ea67ab9e3d604e1a2eb35c1057836509457cfba6010fe830f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.38.3/kctrl-linux-arm64"
      sha256 "72f4acf61c4d83ab823a04f85d2ce7ca730427e4b09d5e6e78f101fcc24057ac"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.38.3/kctrl-linux-amd64"
      sha256 "4442f03491aca0299adad3b44061930dccf57eea47cc8289319cb1fc4d9b4029"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

