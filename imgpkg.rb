class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.49.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.49.2/imgpkg-darwin-arm64"
      sha256 "07aec2fea58ba31c16986305e8279ba71a73958e25a14dbacb595985bdcb30d0"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.49.2/imgpkg-darwin-amd64"
      sha256 "29129b54fb63af193c8f237a1e56841dd9339694aa178d1cb938632570c1c669"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.49.2/imgpkg-linux-arm64"
      sha256 "ee9131599582d420ed16d42689b9911623c3629cf1234556ccfc8e0d0a0d5fcf"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.49.2/imgpkg-linux-amd64"
      sha256 "1fbc3429cffadd8f8ee0fda85434890778100f69544cfa40152ccde35ed16a0e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

