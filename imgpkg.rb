class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.42.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.2/imgpkg-darwin-arm64"
      sha256 "cf10c7cb2ef202e1f4fb1f334e350c760690c21883c79f8485c488ff9007aca2"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.2/imgpkg-darwin-amd64"
      sha256 "59f0af401217f3dc36163c31e093b5bdceeaf9397576e894b591a014480b9c1b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.2/imgpkg-linux-arm64"
      sha256 "493f0931964e800aab255fe32256d044369c997537e7fdc8fcc93ac978c5462e"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.2/imgpkg-linux-amd64"
      sha256 "bea6e08f5f6bf8b2a7f31486c41b34715e5dd6e4319e15968e25cd570daf5446"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

