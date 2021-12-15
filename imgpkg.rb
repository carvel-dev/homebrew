class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.24.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.24.0/imgpkg-darwin-arm64"
      sha256 "485f63233cd24d1b85cc4931e71afc2d62af11df75aaeee494d070c19c88f3dd"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.24.0/imgpkg-darwin-amd64"
      sha256 "f0c87c8caefb3d2a82e648779b36783403fe5c93930df2d5cbf4968713933392"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to https://github.com/vmware-tanzu/carvel-imgpkg"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.24.0/imgpkg-linux-amd64"
      sha256 "cfcfcb5afc5e3d28ce1f2f67971a4dcd18f514dadf8a63d70c864e49c9ddca7e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
