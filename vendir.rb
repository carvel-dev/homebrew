class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.45.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.3/vendir-darwin-arm64"
      sha256 "4c27422b42a83ed598e5548542c0cd19d185002f6d4ae8e12d59df27ebcdf572"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.3/vendir-darwin-amd64"
      sha256 "52a584cf8c9c97b0f9693f33e404b971f3f65bff3a136d979d7b92c8a8f5cf62"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.3/vendir-linux-arm64"
      sha256 "cb951dedcf2e64d8d76cb9c205d13ce78f6a8802a74caa1205ec47bc9f2dac65"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.45.3/vendir-linux-amd64"
      sha256 "7dc6dd9706170b442a7aaf3b4e29da57cca722a3252ed8f6ac9c2997e93a0aa5"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

