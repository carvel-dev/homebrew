class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.44.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.44.1/kbld-darwin-arm64"
      sha256 "b3ee4a28b4033a7f01bb9192571ec372f063e771f7dca7e54c9362239745177c"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.44.1/kbld-darwin-amd64"
      sha256 "a81eced438e60a0ba3c87c3823673eb9f935a8e0e7694c0232e70674001f014e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.44.1/kbld-linux-arm64"
      sha256 "afcb44d37dbac1e2f23c056865798efe0f8b7ff982eee4644ceb146e30584e4a"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.44.1/kbld-linux-amd64"
      sha256 "ffd557f0057c22b8f49ff77ee1ea40d93f3da2b9cb18a82e9dda9399970c2282"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

