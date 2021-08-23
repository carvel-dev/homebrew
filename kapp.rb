class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.38.0"

  on_macos do
    url "https://github.com/k14s/kapp/releases/download/v0.38.0/kapp-darwin-amd64"
    sha256 "2c7c9faf6b5bc564ee6a9450c1e21c16aa97c138ea59629441f8f28876bed6ad"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.38.0/kapp-linux-arm64"
      sha256 "e594417b8dfe4f5fd4d26c313c64000df1f7259e57f79bbb34ac3c771f5f1422"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.38.0/kapp-linux-amd64"
      sha256 "22e3d694745d5f48863018e26ecd7f3d0b8ec475adc40e081a1a39dc4d8f01bf"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
