class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://carvel.dev/vendir"
  version "v0.16.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.16.0/vendir-darwin-amd64"
    sha256 "3e6af7ae5cd89579f6d153af6b6a4c0ab1cfcac22f5014b983d1d942feb8bab0"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.16.0/vendir-linux-amd64"
    sha256 "05cede475c2b947772a9fe552380927054d48158959c530122a150a93bf542dd"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
