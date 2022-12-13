class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.44.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.44.1/kctrl-darwin-arm64"
      sha256 "c6949031750daf05797784ff0d194358543f5951bfd51d5a17e116de5198a050"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.44.1/kctrl-darwin-amd64"
      sha256 "4b2ee6bc36a59f8710b8404529dc88885bf0396922f655ea491661b3a6e54cc4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.44.1/kctrl-linux-arm64"
      sha256 "d1705d862f1af0ecf54facc2e39300e8f979eb276d8902b42170a76266b04512"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.44.1/kctrl-linux-amd64"
      sha256 "7b333bdffc69b21c85b0d7695d6932a2e1da96684546259aa77e272bfab1cbab"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

