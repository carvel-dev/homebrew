class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.37.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.37.0/kapp-darwin-amd64"
    sha256 "da6411b79c66138cd7437beb268675edf2df3c0a4a8be07fb140dd4ebde758c1"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.37.0/kapp-linux-amd64"
    sha256 "f845233deb6c87feac7c82d9b3f5e03ced9a4672abb1a14d4e5b74fe53bc4538"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
