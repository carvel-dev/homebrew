class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.5.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.5.0/imgpkg-darwin-amd64"
    sha256 "465d0ef98eeca0d5487ad0372703d5d72c7989dc301b9ae6aa934fcb8e20b73b"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.5.0/imgpkg-linux-amd64"
    sha256 "90dff1d3d88d51a1f73687f9239265afd8bc5275c9f3bc51e4d8f2f381b01f41"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
