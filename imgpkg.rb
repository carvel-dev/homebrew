class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.7.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.7.0/imgpkg-darwin-amd64"
    sha256 "7752b31f1df9274fff1f8531c5d37128d5c21bf6a7c85f122784f4ea0e85e7b3"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.7.0/imgpkg-linux-amd64"
    sha256 "bb90881c2c03cad4d50b2f0881d1330d341a37bb55bd8fff50bf228f7cfcf3d2"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
