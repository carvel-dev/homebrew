class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.26.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.26.0/vendir-darwin-arm64"
      sha256 "852d8c6a78fc008f3d6fb481d4c56b212a9e9b979fbff93290f86ebd71678fe4"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.26.0/vendir-darwin-amd64"
      sha256 "6f4b3fa9be154b8a1fc82200890fd94903139a8e98ad2908b2167b84a63d3606"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.26.0/vendir-linux-arm64"
      sha256 "d9f5b6e1438d87167863bf744d30c8a40f6bbea018f56ea51a9baf57fcf3609a"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.26.0/vendir-linux-amd64"
      sha256 "98057bf90e09972f156d1c4fbde350e94133bbaf2e25818b007759f5e9c8b197"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

