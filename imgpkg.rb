class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.28.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.28.0/imgpkg-darwin-arm64"
      sha256 "64771d5c9138adb880ea09b2545421f2924b4a2104da9b5349816100fbff1541"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.28.0/imgpkg-darwin-amd64"
      sha256 "e43142fdb197a62844acb29cb619d513346aac3c23732a4d180c0ad974d9562e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.28.0/imgpkg-linux-arm64"
      sha256 "53ea4a9eec4bb1ff6adb701018da9978aad45bdee161d68e08bc69d84459f2c8"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.28.0/imgpkg-linux-amd64"
      sha256 "8d22423dd6d13efc0e580443d8f88d2183c52c6f851ba51e3e54f25bf140be58"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

