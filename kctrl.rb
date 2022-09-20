class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.41.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.41.2/kctrl-darwin-arm64"
      sha256 "9576ab7eda8cce3a1af9f78bbd08dc7faa25247d54feead98842f59b030188dd"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.41.2/kctrl-darwin-amd64"
      sha256 "c49a7196bd70b85b0e2ccc8ed47323189bbf94edc46c66f156671eeaeaeaeb97"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.41.2/kctrl-linux-arm64"
      sha256 "d766031254677c5d07422b96844f4e9ab4aea8d20f397da3c2b93e6ddbdddf2f"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.41.2/kctrl-linux-amd64"
      sha256 "d1556af9a36e337c1637275b9ab150e278e0ee1e803e73d43b820caab7d95b25"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

