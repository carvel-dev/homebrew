class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.66.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.66.1/kapp-darwin-arm64"
      sha256 "42a508769f0c3d2bef48c5d82028d5ad41632fdea10bafb348a16d12ca23c613"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.66.1/kapp-darwin-amd64"
      sha256 "07d8bca1556e0cb3355a82f11a4a1aadfd676795ee407b30f4c99d3d0594e963"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.66.1/kapp-linux-arm64"
      sha256 "d64989caa229a3427376de44bf2e739e4631a21f69d2968758d01c903c004fe0"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.66.1/kapp-linux-amd64"
      sha256 "af3a5051fdaacc477528f288a45516811bcc8b35c67ba68c04c95a7543daba2e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

