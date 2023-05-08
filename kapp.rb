class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.55.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.55.1/kapp-darwin-arm64"
      sha256 "cdcce1ed3598b3a49515494991e952734c7ea612944132dcb4c2d27bf715f69e"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.55.1/kapp-darwin-amd64"
      sha256 "0de2a779052772f827fb832fe15f2738c9cacacbb97016426603d885026e8fbb"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.55.1/kapp-linux-arm64"
      sha256 "c017130cf75ba4e0d1a7ca8adff4dd4dcdff639ea241206b9d2c2dcefcffa764"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.55.1/kapp-linux-amd64"
      sha256 "7a6f311a464d6e6331cc5ea93e1b6201875e259b2d1ed2b5a5b5798402c35fba"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

