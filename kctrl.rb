class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.41.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.41.3/kctrl-darwin-arm64"
      sha256 "6cfa08b1735fc8ba52d821ebc79b7f324916c4b709a427b74ca745e8b9e8e77f"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.41.3/kctrl-darwin-amd64"
      sha256 "70d4c564ff332eeca0ceba713cc7d882364700108a8be5da1feecf8b387db01a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.41.3/kctrl-linux-arm64"
      sha256 "bdc063f652754088d147e56cbb17aa3c290ca927ac0094af8f0e57f1fb2f62ea"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.41.3/kctrl-linux-amd64"
      sha256 "8b1c8a59817b3e1d26a3fadb6deb5baefaaaa8aec61a38daec3034edbca65d9b"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

