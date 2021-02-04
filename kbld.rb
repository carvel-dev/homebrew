class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://carvel.dev/kbld/"
  version "v0.29.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.29.0/kbld-darwin-amd64"
    sha256 "3754fa1ba3a26368aef32769bfb084dd62e52be9c5af0b65e574729e92d21cbc"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.29.0/kbld-linux-amd64"
    sha256 "28492a398854e8fec7dd9537243b07af7f43e6598e1e4557312f5481f6840499"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
