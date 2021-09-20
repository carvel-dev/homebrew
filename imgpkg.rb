class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.18.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.18.0/imgpkg-darwin-amd64"
      sha256 "976aebc0eef995e95b391bf7fe36be82c50faa726c151bab2646002a1c042245"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.18.0/imgpkg-darwin-amd64"
      sha256 "6ef71c549deefb1b9b798f31525610c4a7a562401f22b3bdf18e0cb769921d32"
    end
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.18.0/imgpkg-linux-amd64"
    sha256 "7e401eab1fbbaad8044cf3d82ff09cb8ec7666444ef91da9591f202e8b2a8a67"
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
