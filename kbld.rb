class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.37.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.6/kbld-darwin-arm64"
      sha256 "4e63fbb638327aa00aa30ae54bc441d2e52ded0f299c67688d005d86d9c9d7a6"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.6/kbld-darwin-amd64"
      sha256 "5ae0175372b36c40ffc40db32a6e0ef0d30a260b6b717ef5836a9f9a34bf7f72"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.6/kbld-linux-arm64"
      sha256 "31292539125e5735159e5d1c447876a73832a12b10442282697299cc2f2ade55"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.6/kbld-linux-amd64"
      sha256 "1e07f2f646c752cc67f7e4d41f098497e2e49f2798deb95fb5b56ca9598ab7ae"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

