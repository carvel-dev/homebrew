class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.45.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.2/kbld-darwin-arm64"
      sha256 "bb5cf82b3a64fc3e100c04a45db4052eaeca62247af8cc98d473d833b2ebe4e1"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.2/kbld-darwin-amd64"
      sha256 "e8bfb2bfef8f78d96d499774133ae865f2859aba48e186b825c07f99f4581e5d"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.2/kbld-linux-arm64"
      sha256 "c37f9b6c2f67066a33d1232580dddb5d36cdd8b244c1bc156bc668df1e8d2099"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.2/kbld-linux-amd64"
      sha256 "5beb63063cc5d4c7de507370e780cf342926cc6e0e343869b01d794fce7f3f99"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

