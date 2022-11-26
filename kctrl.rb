class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.43.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.2/kctrl-darwin-arm64"
      sha256 "b24fc95c7bcbe07eefa4da368dca78accd6298be37a8880e7660c342b55eb309"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.2/kctrl-darwin-amd64"
      sha256 "9170c27b41a1c4ebaa11fb22eae6c9f946f2315b81d703d1896039c2c0a3b308"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.2/kctrl-linux-arm64"
      sha256 "3d2588967d708bcf3b1f1371b48744e30281c25c2296c75e975cb82b8c12f588"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.43.2/kctrl-linux-amd64"
      sha256 "3fdf5dd5f01e1558da15a2b53ae98758765b3853f0601697fe5b7903b1a6abe5"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

