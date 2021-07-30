class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.16.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.16.0/imgpkg-darwin-amd64"
    sha256 "23bf8d161e9852a4f929568aee6afd3aea5b287d2958370f18877c9970e8ced3"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.16.0/imgpkg-linux-amd64"
    sha256 "7668475a2b0be3bc3dd475312a4c8a19e650decaa61f10f5f62a6aafe6541473"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
