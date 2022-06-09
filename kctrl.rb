class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.38.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.38.0/kctrl-darwin-arm64"
      sha256 "e8f664d07b4b914100e54fa5227be22ad01146cfd507a46e501b51ccb15bfd40"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.38.0/kctrl-darwin-amd64"
      sha256 "fcf02419cd496115d7e3b9e6977d9cb18388dae75bfc79ef5de59c19f95910b0"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.38.0/kctrl-linux-arm64"
      sha256 "c6deab3057d1781b83da027890b81c8b2c25d0f19af04f8c3b5817da85f2294c"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.38.0/kctrl-linux-amd64"
      sha256 "02b7629e87e84e238ee7a65da5f555192ddce441abde80c6cb61de23e1229813"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

