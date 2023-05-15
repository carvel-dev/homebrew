class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.56.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.56.0/kapp-darwin-arm64"
      sha256 "6cb9777c9a67aa75fdbe45ef395877a61af3e209a1e354be67c1c098106507a1"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.56.0/kapp-darwin-amd64"
      sha256 "4ebddf3be5cf0d55d71458c8b128bfdac361daec317fffbcefa0dcbc5288d26e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.56.0/kapp-linux-arm64"
      sha256 "7ce8bb078204530f0e15a761c17b30cc49d55188de73ea78c89888509663ed39"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.56.0/kapp-linux-amd64"
      sha256 "2764aac38435b1178a9c232c072b6e184bfc8802268580ab911a1e84eebc42c1"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

