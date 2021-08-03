class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.17.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.17.0/imgpkg-darwin-amd64"
    sha256 "f7b22603d887286f63cf858316932829cf99e6acfa3ad8962f63017aecccf52a"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.17.0/imgpkg-linux-amd64"
    sha256 "d54437b974ffef9aa5d6f913c9a5a75f02d6151e99ad5d72bfb96ecb2d17e58e"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
