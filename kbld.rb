class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://carvel.dev/kbld/"
  version "v0.30.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.30.0/kbld-darwin-amd64"
    sha256 "73274d02b0c2837d897c463f820f2c8192e8c3f63fd90c526de5f23d4c6bdec4"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.30.0/kbld-linux-amd64"
    sha256 "76c5c572e7a9095256b4c3ae2e076c370ef70ce9ff4eb138662f56828889a00c"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
