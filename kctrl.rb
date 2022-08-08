class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.39.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.39.0/kctrl-darwin-arm64"
      sha256 "04e83b0b4c745f5939d626158141d4296ea0650749e75efba06995be682f8582"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.39.0/kctrl-darwin-amd64"
      sha256 "b442fe1788b699d322f8b18a5cbabd6acf04f0e0d73c0e0c395d6b4a22bd5120"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.39.0/kctrl-linux-arm64"
      sha256 "a623b6243a850e5a0e2f89dca2b6c795afbab833c97143599df0edd037feef31"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.39.0/kctrl-linux-amd64"
      sha256 "de1392ba4fc269eefde8018633dbcc0007c06dbe20eab924a9a419ae6d451fca"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

