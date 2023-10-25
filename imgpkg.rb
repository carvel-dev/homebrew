class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.39.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.39.0/imgpkg-darwin-arm64"
      sha256 "378ba1c3b06361d9695c92b54e803309e1bc28084de492c58ed0c993f3987b82"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.39.0/imgpkg-darwin-amd64"
      sha256 "2bfbe2a5b69ab4da652753af9b335ad5dd222780428f064aedd2f50bd11e2693"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.39.0/imgpkg-linux-arm64"
      sha256 "7b247c24850dbf4ff70095b6d7f5aff12aea15d0ece9e9ecf66f92e3c9d2f332"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.39.0/imgpkg-linux-amd64"
      sha256 "98b80baa5d665c5119fc8e2a62978f9d193c9647e3c47ab72867b055b94d14ff"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

