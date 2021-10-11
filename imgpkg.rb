class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.20.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.20.0/imgpkg-darwin-arm64"
      sha256 "00e4f101222c8545c9dc025d1fb908c215fc5498c8171b18c71aa1263d8c1ad9"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.20.0/imgpkg-darwin-amd64"
      sha256 "c5f8da224757d5aa409ebf5638de1d5b6ce8e1f5330363909a71281f1adb9550"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to https://github.com/vmware-tanzu/carvel-imgpkg"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.20.0/imgpkg-linux-amd64"
      sha256 "fd0adbe94c4c3bd8903a28b07cda10bfda95c33dffbc10ba66ba433007546e85"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
