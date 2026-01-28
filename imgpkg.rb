class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.47.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.1/imgpkg-darwin-arm64"
      sha256 "28b63732a6ee7bce9a9e3c98de8b53adaa51f83333fbb79ed5de2fc96fcb05ad"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.1/imgpkg-darwin-amd64"
      sha256 "cc4aa100f9f0b0e86c0d206f253eb112b8014736ce9764dd3a997c08b16a661d"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.1/imgpkg-linux-arm64"
      sha256 "ec80cb342d78d8b068f3fcda9e1c6b3f25c7efec860d5c8d413b8cb9d55bdc2e"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.1/imgpkg-linux-amd64"
      sha256 "6ad336f352e23ed68b9da7d2843e6784a9c913f7950edb56aec74c98e251e364"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

