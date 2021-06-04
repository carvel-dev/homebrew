class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.9.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.9.0/imgpkg-darwin-amd64"
    sha256 "bc6f038a7f482ef909007552538e06422ece3db377aac1b6c8e898fca355d716"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.9.0/imgpkg-linux-amd64"
    sha256 "db3e8eef266cb3c98e1cc58a574145f5246ea3cbee27f4539e98b699ae0b694d"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
