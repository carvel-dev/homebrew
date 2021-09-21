class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://carvel.dev/kbld/"
  version "v0.31.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.31.0/kbld-darwin-amd64"
    sha256 "d3b0a30bf3a79bedeb25d8548a91254954b99cd4a0c03f3a810b331fc4d1f071"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.31.0/kbld-linux-amd64"
    sha256 "ba0be56d9e74b067f3e659de0b79100b0b9df86a2e3e0e6ff533b1e019c22c23"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
