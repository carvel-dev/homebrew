class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.36.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.36.0/kapp-darwin-amd64"
    sha256 "1076da52c7291a7b9c7c0169b59fa18ef5248dee1e060676f8f5af325826d508"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.36.0/kapp-linux-amd64"
    sha256 "22fe308f1d9ebbb829a6ea10ca80d9468ff4b9aa911b0c33788fe67d04ccb383"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
