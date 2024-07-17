class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.44.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.44.0/kbld-darwin-arm64"
      sha256 "31086a41bcfd012a7b9e2e7fac6f6615f8d8b633e00104c97ca7235b242915d2"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.44.0/kbld-darwin-amd64"
      sha256 "2912583db28bc0caa88549ce142c6f30731e0580cd141e646673f4b733f52996"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.44.0/kbld-linux-arm64"
      sha256 "3a85316703a6c22d2d4d286a09993cd8d9c4955ca9e863f8fd7096a596070840"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.44.0/kbld-linux-amd64"
      sha256 "2b1550a7293963fec0a4d2b6fdbfa9fc24af4a43035d18ba8e6f9b4c67662ad0"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

