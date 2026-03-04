class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.47.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.2/kbld-darwin-arm64"
      sha256 "da43fb9c6f9298f52b1c4a6d6a95047b81307f41a09a6918db8c10ae9448287b"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.2/kbld-darwin-amd64"
      sha256 "928d0297cfcd1bcba15d17cac1576d9c2e4b33c9fe32f4c1966a5609c1bdfa29"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.2/kbld-linux-arm64"
      sha256 "a13bfe9ec7464c24dc18fcb2f192b383b7f26cdd1fa8d891de9699b04a86c4d7"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.2/kbld-linux-amd64"
      sha256 "4f220f904da398e7e8741d81995d9c96ff5f1e9b0578fa157fc5cc16730844a6"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

