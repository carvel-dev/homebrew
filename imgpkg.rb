class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.42.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.1/imgpkg-darwin-arm64"
      sha256 "6a437f95f8cf0d1295c4165ce60ecf3f4dfe722a497bce8f1b8005a671551df8"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.1/imgpkg-darwin-amd64"
      sha256 "76a2d5a1cc6b5917fea35c9cf7383fc742ade39f2d51f1485a25bd4a8aa58970"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.1/imgpkg-linux-arm64"
      sha256 "78ed95d612a927abc344df8cadd052610637566b98594252db3bc03ff2713d83"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.1/imgpkg-linux-amd64"
      sha256 "fc4e0bc2e238b2ffaff8f04fba0844de0d1e5ef7dd870a4d01896361b5b5510b"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

