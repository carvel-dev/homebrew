class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.19.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.19.0/imgpkg-darwin-arm64"
      sha256 "d338feb164a0f0fe035457be324d92782367271775030120751e0e515edd69d9"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.19.0/imgpkg-darwin-amd64"
      sha256 "a548abe7adfd4dc3f8c86d63a26eb03168fafdb4503b6296f196106db303f71b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to https://github.com/vmware-tanzu/carvel-imgpkg"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.19.0/imgpkg-linux-amd64"
      sha256 "3a0a8b081fe35651dfbadf4c1531fe919a28159c70f92a2de49d42fa98a571ce"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
