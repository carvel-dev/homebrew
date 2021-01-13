class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://carvel.dev/kbld/"
  version "v0.28.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.28.0/kbld-darwin-amd64"
    sha256 "4962a56a755fb3f12678d1024007bcf87485e350b031924d5f24c3361e7dd7f9"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.28.0/kbld-linux-amd64"
    sha256 "3174e5b42286aab4359d2bc12a85356ba520744fd4e26d6511fb8d705e7170c3"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
