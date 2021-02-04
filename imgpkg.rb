class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.4.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.4.0/imgpkg-darwin-amd64"
    sha256 "5d751e00ca67e0fde17d2ea9d5ed8f32a344a13690efccc88edd33fb6687d2b0"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.4.0/imgpkg-linux-amd64"
    sha256 "68f6798af67e62dc7ac738162db9e29ce428d41245d56c88fc041ed435376d49"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
