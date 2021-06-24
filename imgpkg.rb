class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.12.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.12.0/imgpkg-darwin-amd64"
    sha256 "c97e3cf53caa1fdc1b1d7cc166603cdeb4606d0455d18aed709def93359757bc"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.12.0/imgpkg-linux-amd64"
    sha256 "725ea938c22559efe84523e35246f206830451b37d931a0ad9c76258f22744fd"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
