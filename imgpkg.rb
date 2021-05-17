class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.8.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.8.0/imgpkg-darwin-amd64"
    sha256 "11439505cec7cd0c28182cdb2e269368be8c51376fdd57846289a4ad81460fde"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.8.0/imgpkg-linux-amd64"
    sha256 "d998c1628c5956ffc84b36f23bec6fd0145977e76f3c02a0c28962e6f8f233c2"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
