class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.37.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.2/imgpkg-darwin-arm64"
      sha256 "9b41fa0649e5c3ff1fc9e245274478da65cceb4939a9cdef8f73b82556e9f4ce"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.2/imgpkg-darwin-amd64"
      sha256 "afd172e23beeb983349c239f5effe711c7f44e74ae91fef97efd55bd8a4461a7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.2/imgpkg-linux-arm64"
      sha256 "e6e7010f84e89d5c935aa6077782cbfbfb2820e7b8c17989e375402b3d85a9b3"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.2/imgpkg-linux-amd64"
      sha256 "1a3b81ba2f27bfc7b7ebf07aba22c0e574596508353d77e6d633ea938341fbfc"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

