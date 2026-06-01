class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.48.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.48.1/kbld-darwin-arm64"
      sha256 "a9ed7e4fbce8fa714357458d29cea0664a00d403415f47e700fbc3b7d951f561"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.48.1/kbld-darwin-amd64"
      sha256 "fc0909f8a77f737cc075fc2e9dbf70408e00e933015863569dbd17a020e6fc06"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.48.1/kbld-linux-arm64"
      sha256 "27cc0137f0b7c71e0ebe924ace785b6e25b27c809c7db8d39f880c1864c191cc"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.48.1/kbld-linux-amd64"
      sha256 "9e417cb47dbf484cbf2a9f10b6a43186d2dded3597102de3f47f1d2989669884"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

