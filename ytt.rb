class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.32.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.32.0/ytt-darwin-arm64"
      sha256 "42470495f35fbbe66a0c40ab516519839448475e0e24477b1f33f69d38834175"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.32.0/ytt-darwin-amd64"
      sha256 "bfd60b38f74fd532e99cff2d2d309aea1b1e00d9d5faaf414ebd30ea9c1a7a43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.32.0/ytt-linux-arm64"
      sha256 "95e5bf9c1c4d972edfa656311ed3ce6b6d745638aad94003bee5807736fe32e3"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.32.0/ytt-linux-amd64"
      sha256 "1a8f30e0b86b9daa649433e6092a4a1c6fc9c88400b6842af357c7380924bbc6"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
