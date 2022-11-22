class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.54.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.54.0/kapp-darwin-arm64"
      sha256 "1a3de4626ab84a5f29e58ae4498f83886fcb6d588454d1d4603d4bc4414f309e"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.54.0/kapp-darwin-amd64"
      sha256 "2521971ce334e32af32942aece39c9cdc7a2a9c982c386c2aa61db1a2527a10e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.54.0/kapp-linux-arm64"
      sha256 "1afa5624183464b4c9dca7a7f63ea51c7f78d74a722e11ec4a774c8e68fb5784"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.54.0/kapp-linux-amd64"
      sha256 "886cd9d634214904ee34f44510abe85ce60acbbe4529131ad97bee387d6327fe"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

