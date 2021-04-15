class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.6.1"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.6.1/imgpkg-darwin-amd64"
    sha256 "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.6.1/imgpkg-darwin-amd64"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.6.1/imgpkg-linux-amd64"
    sha256 "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.6.1/imgpkg-linux-amd64"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
