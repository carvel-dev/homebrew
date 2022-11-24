class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.43.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.1/kctrl-darwin-arm64"
      sha256 "747ce2ec630ff976a97c19a61d7061876cf8fa9fffea8fbf8971b88a90bdb690"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.1/kctrl-darwin-amd64"
      sha256 "737a1e407bc59edff16587ddb405eb690d47a95bcc2b4d10108dba6bc75414c6"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.1/kctrl-linux-arm64"
      sha256 "bd1c96daf38c7fd133845de7ff814697cce4c7d1cd90ef04dc27c9d9a15540fd"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.1/kctrl-linux-amd64"
      sha256 "1f3f178cb7387de3097799f89bcdf4c30d8a92339698aee2e7a8e78a955fb8a6"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

