class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.46.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.46.1/imgpkg-darwin-arm64"
      sha256 "db44c36ee72481afe70105cda10989e441ad23f6292b9ff1de815c9e1e3a3416"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.46.1/imgpkg-darwin-amd64"
      sha256 "7d72601f46827ba7cb65ba2f0cc07fb1ccfdcc99d7b6cdb5923ecedb692f7c31"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.46.1/imgpkg-linux-arm64"
      sha256 "3e7cfba3cc55401ad1bbc80c7710e67a0376c56d8a72dc81864ffbbe64b30aba"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.46.1/imgpkg-linux-amd64"
      sha256 "1bc6b735dbdd940a5c78661781f937090bd5fbc89172f01e600ee91fe122edbe"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

