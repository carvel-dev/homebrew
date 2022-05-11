class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.29.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.29.0/imgpkg-darwin-arm64"
      sha256 "9fe95ffc572e6d5011b211cb7d85420f41a1b15f91e4899c451e5817dfa67a6f"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.29.0/imgpkg-darwin-amd64"
      sha256 "b8462c9b2b9c060e1a81c206ea9810937bf7357ae2ee150f94ec8635dff1d612"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.29.0/imgpkg-linux-arm64"
      sha256 "415120c4ede6ff1456feae6b980319998c0a3fc2128bbac1946ba98ce4d07aaf"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.29.0/imgpkg-linux-amd64"
      sha256 "c7190adcb8445480e4e457c899aecdf7ca98606c625493b904c0eb2ab721ce19"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

