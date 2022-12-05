class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.32.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.2/vendir-darwin-arm64"
      sha256 "7fdd166fd1f8dfc7cdf79ae62e97c8389145291b744c04eae4d3810026332ee2"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.2/vendir-darwin-amd64"
      sha256 "e7fb496b8e81b4b87b0076e778a384588b8e19a7b68c2c0b2ed74739c398643f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.2/vendir-linux-arm64"
      sha256 "eee5abf139043c459ff2b9ffab0a75556d4930d44abc5e7e4477e84b598b6f82"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.2/vendir-linux-amd64"
      sha256 "f5d3cbbd8135d2d48f4f007b8a933bd60b2a827d68f4001c5d1774392fa7b3f2"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

