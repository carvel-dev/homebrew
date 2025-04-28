class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.46.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.46.0/imgpkg-darwin-arm64"
      sha256 "2f7543d3873e60776a8dfb5e4f329c7d2f476413247bb11f6e816a649be1d7a1"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.46.0/imgpkg-darwin-amd64"
      sha256 "0a2fc4faef18c342d310357a948766818fda2c0753d42b26e23a58afa9cbf761"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.46.0/imgpkg-linux-arm64"
      sha256 "a57004ab4a52c3e9b3b1c2eeab76113b3cbffaa46142f56261bbf2d2fedc182a"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.46.0/imgpkg-linux-amd64"
      sha256 "e21cb5f3ff185b6a5e93ce6114cd7120e8bafe658916a1b549d7c54fce806ced"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

