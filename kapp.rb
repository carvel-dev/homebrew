class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.57.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.57.0/kapp-darwin-arm64"
      sha256 "ebc158878a3fa8a2b5a978580c705795222a8e56d230371aa21fe0a3ad6f3126"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.57.0/kapp-darwin-amd64"
      sha256 "761ce5415f4a1e4e05d47632e0a21da0a050435b495f9aed7997b77c4d59332c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.57.0/kapp-linux-arm64"
      sha256 "1385e0a7da5bf4c6b4428cf2059aa075a78dd7b66feb7a26ed04813437bc38a1"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.57.0/kapp-linux-amd64"
      sha256 "f71adcf7292aa5a38f4fd8925bec27ab3af61e24e2eed122cb4856381c17efc1"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

