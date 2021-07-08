class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://carvel.dev/ytt"
  version "v0.35.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.0/ytt-darwin-arm64"
      sha256 "faac1c8595ca5e3b1b49add19692d07db2670cdaca72ec5a6d79eadd7b9cd5eb"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.0/ytt-darwin-amd64"
      sha256 "1c8d5c28c107da2767d1688fd3aaff86ba9d8f26706d12b0986d49ada24f39f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.0/ytt-linux-arm64"
      sha256 "f1a8fd1f2b1e45384590b50c90513347bd77772967c99feb3372a232abc14abe"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.0/ytt-linux-amd64"
      sha256 "1d129457872d777c14c187ecc40b99c49d9206502af0b9c29bbee68897a1e5d9"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
