class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.45.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.45.0/imgpkg-darwin-arm64"
      sha256 "e351f9c590008eea4719c22ce19ee505d97fc32f43373d1a3ed518267d6a0ccc"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.45.0/imgpkg-darwin-amd64"
      sha256 "1238477e9067cf68143ef6bce3279e983c72eb0eb0a7513b5ca1f23a2f4aa6c1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.45.0/imgpkg-linux-arm64"
      sha256 "51dbff787fd64d25869737e92516b4d2e31d4ae2b2f0773dae032217e3e1bf58"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.45.0/imgpkg-linux-amd64"
      sha256 "c06708b47baf4e647ec7d88def7eca21c4d7732b369e832131b1649ab2a4a180"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

