class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.21.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.21.0/imgpkg-darwin-arm64"
      sha256 "fbdd2fa81e2a40c371ffc966884a44e307393b564896985ee6bf331cff3d9034"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.21.0/imgpkg-darwin-amd64"
      sha256 "75704d3e29fb2190e1de4476fece135ebb02524ab70f89f6bcbb6d4221b015f2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to https://github.com/vmware-tanzu/carvel-imgpkg"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.21.0/imgpkg-linux-amd64"
      sha256 "8c8b05d4e4d84771757ba822701052692434a6e37b7b79affaf1067aa95b31f8"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
