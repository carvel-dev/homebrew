class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.35.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.35.2/vendir-darwin-arm64"
      sha256 "afc3cd5dc7eb8f83582cda5993e6ec94a3dafac001bb6ca46cefd11e5a044ced"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.35.2/vendir-darwin-amd64"
      sha256 "15e991b5ab1b3b274f5868ff813ae4a00c17eae2c131f659efef46244d889123"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.35.2/vendir-linux-arm64"
      sha256 "8da68d1dd98df17101e21fbe0925a6cc4da557aeafc7b3cb9ffc4d0aa7157a9b"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.35.2/vendir-linux-amd64"
      sha256 "a0f28b86a4ef3800aaa54ad30bad449fd43a6af192a081748c67f2f48ad5cbd3"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

