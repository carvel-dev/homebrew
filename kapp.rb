class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.40.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.40.0/kapp-darwin-arm64"
      sha256 "1632b8365e9392c08425e9ff8003fe5ff616b622c6e0255ef69bc87db0349afe"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.40.0/kapp-darwin-amd64"
      sha256 "d667c5cd05eb20df74763b59f31203569f7c89f185c5b7945d74a1235c15040d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.40.0/kapp-linux-arm64"
      sha256 "5a79561d07d6ef37fec795b9956d250cf9a1e4b245bd14bc154a21d9ab811a4c"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.40.0/kapp-linux-amd64"
      sha256 "94cfdcf8a3aec521a68c4c2c569434684e71914d42296bc9fee8bfe912f63984"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
