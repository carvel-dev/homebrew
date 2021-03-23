class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://carvel.dev/vendir"
  version "v0.17.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.16.0/vendir-darwin-amd64"
    sha256 "695baed3f339cb0f3e0354e80e46677539d45511c2fb09c7616af93aac49cc1b"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.16.0/vendir-linux-amd64"
    sha256 "93958682953a0e6f1f403b67a5df9507a070b964b0c1c961eedae0b25edf4df0"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
