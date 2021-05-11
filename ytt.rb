class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://carvel.dev/ytt"
  version "v0.33.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.33.0/ytt-darwin-arm64"
      sha256 "afa1020ba17b6adafb9a40e53701089fa0b2bbd12ee71b78baaa41ece1138922"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.33.0/ytt-darwin-amd64"
      sha256 "7783d2b8a2087b18179674685dcac0de463cdc50269c676dbd365c590114d0ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.33.0/ytt-linux-arm64"
      sha256 "cbdccb39ba051d8136180ca90d9de95e6605302575566e5399e468c346a7ccd7"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.33.0/ytt-linux-amd64"
      sha256 "de20cb812f6c5f66feeb66cfcc82607d21c2b726cb54cfd0eaddd112f062e5ca"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
