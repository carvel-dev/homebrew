class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.6.1"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.6.1/imgpkg-darwin-amd64"
    sha256 "832e7425272f67fbabc51633eae6612927e9ddf317d752cf21d3f9dd09163138"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.6.1/imgpkg-linux-amd64"
    sha256 "67a368333528bedbe0b951e045186e7be62a1dd7600b7f32e9f662079ad34f0c"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
