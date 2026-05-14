class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.65.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.3/kapp-darwin-arm64"
      sha256 "75c1c9809d3d3c618480be6ffaa00a4650e9792a86c8e561d63d8927828fc0e1"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.3/kapp-darwin-amd64"
      sha256 "cebb31f6b72cd94dc4e1c17b31ba6e4ac70caeb53e4b29aea1fbc1885605e9a7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.3/kapp-linux-arm64"
      sha256 "485eb76508c33365780a91831ebbf030b1be93b02d6011935abdaa751328d719"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.3/kapp-linux-amd64"
      sha256 "1724da4b62982285b1da696fb0354738e33913b33e59f3787b5c2b5ac7030327"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

