class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.32.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.32.0/ytt-darwin-amd64"
    sha256 "bfd60b38f74fd532e99cff2d2d309aea1b1e00d9d5faaf414ebd30ea9c1a7a43"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.32.0/ytt-linux-amd64"
    sha256 "1a8f30e0b86b9daa649433e6092a4a1c6fc9c88400b6842af357c7380924bbc6"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
