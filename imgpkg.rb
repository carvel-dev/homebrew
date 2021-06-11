class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.10.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.10.0/imgpkg-darwin-amd64"
    sha256 "e6666da31c678744481eb288925adb234fc55357fa6e1eb1a4f1d3e59ea04d2c"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.10.0/imgpkg-linux-amd64"
    sha256 "5ce5aec4f6d0973ed4dfe3963024ea0889da485599532ec6fee4af49139dd751"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
