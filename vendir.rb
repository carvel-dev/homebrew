class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.31.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.31.0/vendir-darwin-arm64"
      sha256 "a94a22c2ab253dd2a37988f38c238ddbe2d8298054191e63ff1b3bbd0c2b53ad"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.31.0/vendir-darwin-amd64"
      sha256 "5c6741561cf2f92591b1b6420f407a80948ac0e964a1f3c16393d0edc3c2efc4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.31.0/vendir-linux-arm64"
      sha256 "bcb4de5602428da37b4fa4c2163533790574587dd010f00ee57a4f875c46a0e7"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.31.0/vendir-linux-amd64"
      sha256 "69e96fead5d2aaba9f4671f56ca0093445464a061d6c25f0f66f86ba0889c2b0"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

