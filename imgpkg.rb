class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.15.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.15.0/imgpkg-darwin-amd64"
    sha256 "825e825360a91bbfa96a7983fe9efd652b3aabb99c823da25e5c9b419e35ee10"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.15.0/imgpkg-linux-amd64"
    sha256 "648d60861bffb5d4c25312656d231b775dbb9a0ad3512ebfb5a4561cfeb52318"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
