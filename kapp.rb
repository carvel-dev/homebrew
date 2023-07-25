class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.58.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.58.0/kapp-darwin-arm64"
      sha256 "3660dd8efe83c1356e05255307fa6f65825ba694d96b93bc38c6a43d7e6d7a8c"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.58.0/kapp-darwin-amd64"
      sha256 "e71048d2b11a2c10258079cc134d7d2c2b6584429202a6212306380d3a8c0a30"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.58.0/kapp-linux-arm64"
      sha256 "25491298f6783a8b337d2ebdecf749f7750cf10260fe37086315a9c7da0b558f"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.58.0/kapp-linux-amd64"
      sha256 "b253ea9cf6add07f9497955147dc12e8612c24c36dc9929c9a4fecdc76752bd3"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

