class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.59.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.2/kapp-darwin-arm64"
      sha256 "a404ed1bee2e0cb1a09498a991a3c897ee2ad08134a4eff01529ff73d7b47f3a"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.2/kapp-darwin-amd64"
      sha256 "c20034a347bf90d977daac29eadbb4db4a7dc172a18a9d27fe0a48c39c124d27"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.2/kapp-linux-arm64"
      sha256 "03d8ef43aa467756a22fea6d32745b3bddef163fa22de4f8b5edd1d60fdc0585"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.2/kapp-linux-amd64"
      sha256 "6986369c06e89bcec366b2cc18f81634fcd95e2b52c6c6f7ee46b497ade25f7d"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

