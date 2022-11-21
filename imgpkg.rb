class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.34.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.34.0/imgpkg-darwin-arm64"
      sha256 "1e93413fb2ddd91194045406ff64d85f55587cbf0338981ccc5d330552e68672"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.34.0/imgpkg-darwin-amd64"
      sha256 "a4dadd5fa632a619158968d4c384d31e16fdc6738503426483a6e5bc929e8225"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.34.0/imgpkg-linux-arm64"
      sha256 "09b201aa142102f7db5655963b59e8f890580f86be658dfc0460f4b0b2e881b0"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.34.0/imgpkg-linux-amd64"
      sha256 "e9b69dfd38e6d09f87ddbf8b2356cbf4d41172a84304640ecafe6be4841304d9"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

