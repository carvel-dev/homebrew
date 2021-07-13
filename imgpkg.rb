class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.14.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.14.0/imgpkg-darwin-amd64"
    sha256 "3c63f224833590526c3b48ab5db1be4ec07ece6a6eb4879888fefba14b6176be"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.14.0/imgpkg-linux-amd64"
    sha256 "bd53355fc3a05666681ddf2ba1dfae2da894bc1c74d86cdc545d772749abc887"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
