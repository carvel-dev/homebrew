class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.13.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.13.0/imgpkg-darwin-amd64"
    sha256 "6b88505084f026cbc4f3cd7984ca753f47dd392e5e8859695113958cc1381c10"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.13.0/imgpkg-linux-amd64"
    sha256 "98856613274f83364ab3156f5f6922455eefdf2302b26ed72e8f7ab0eb6ff82f"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
