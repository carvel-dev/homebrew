class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.26.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.26.0/imgpkg-darwin-arm64"
      sha256 "831c4c570377c6659f509a5c770e088c8ee696f076abe69e6908a49f0163c4be"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.26.0/imgpkg-darwin-amd64"
      sha256 "99f174e0fba4f864d67a3002ce930d6ff162a97a6c89d653c52a9393bd5e28a4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to github.com/vmware-tanzu/carvel-imgpkg"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.26.0/imgpkg-linux-amd64"
      sha256 "a16baeb24ffd3a598c99d606f084193bd13fa6b2876e7a83ec585943c956fadc"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

