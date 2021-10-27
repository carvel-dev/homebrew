class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.22.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.22.0/imgpkg-darwin-arm64"
      sha256 "b945070d7cf817b03572ead0cac555e79fc10b0cec28a9fb9681ee54c611efb5"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.22.0/imgpkg-darwin-amd64"
      sha256 "bc2819d73c6680c402a1ff4a51de07a5decafaef70b34662b46460c9a5eccc4c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to https://github.com/vmware-tanzu/carvel-imgpkg"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.22.0/imgpkg-linux-amd64"
      sha256 "d34a06097a781ed15a4f04d6fe72b41ccf9dae835c821ec524a99b6c4e647f03"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
