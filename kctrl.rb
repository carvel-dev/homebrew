class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.40.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.40.0/kctrl-darwin-arm64"
      sha256 "cf1aa5bf8c46228a4a0b6ad8fb007316853022949a584a5a3388e4963d11dc69"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.40.0/kctrl-darwin-amd64"
      sha256 "b101e611e079d80b8520be52a1c646f36bb2bfe5a2fa60f0b1cdd92b0d824003"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.40.0/kctrl-linux-arm64"
      sha256 "20ef728ddc908dab63f8ec68426d06f0f73728d2f5bc1e43df0587f3ab73a126"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.40.0/kctrl-linux-amd64"
      sha256 "16a5c3e7ff49d52e6169d4a57fabf9e862d6eaf7e7b87293ba736ab944688034"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

