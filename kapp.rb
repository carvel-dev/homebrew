class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.35.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.35.0/kapp-darwin-amd64"
    sha256 "2f7b37c9cf5a8fd46e7b5da181c93ac3c16fba21664e3c5e413e38fca3510cc2"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.35.0/kapp-linux-amd64"
    sha256 "0f9d4daa8c833a8e245362c77e72f4ed06d4f0a12eed6c09813c87a992201676"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
