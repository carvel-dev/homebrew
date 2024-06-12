class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.62.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.62.1/kapp-darwin-arm64"
      sha256 "bbf1425904ba70702f70bd7235f4e9c2e02cf42f4d45251aa0bcff9441669dbf"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.62.1/kapp-darwin-amd64"
      sha256 "13648fa026484768437392e9c6205f22fbc1aa27789da55ea81eb8a798f72013"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.62.1/kapp-linux-arm64"
      sha256 "f5d2e48c21c25e4b59438bbf6e709a6335374dd78737fda455d477f6de62aa33"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.62.1/kapp-linux-amd64"
      sha256 "b686bd63e5f751496d8221c7cf3df308663b6b21e1c480dd4a4cd301f6a8d651"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

