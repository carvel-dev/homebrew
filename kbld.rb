class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.45.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.1/kbld-darwin-arm64"
      sha256 "afbf0dc8524e8d3b1780ec0cffeb54ab75b87ea3e1531b5b31769c94f5d4105d"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.1/kbld-darwin-amd64"
      sha256 "4d96f3c2723da903fece06ece0ee49f21db6c5d125a32e3b74c00a680c0fdfe3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.1/kbld-linux-arm64"
      sha256 "19c59f016a55007093f720af51a890eed65798c293fa798d5ef98be7b170e59d"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.1/kbld-linux-amd64"
      sha256 "9393c678bf03cd6559ef7df4a93507ece934a63779526a97ad632b0a265ec5c8"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

