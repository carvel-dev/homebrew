class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.36.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.2/imgpkg-darwin-arm64"
      sha256 "5bdce1d53eae979ba00cf15a8194a3f778114b55e025a4de48e1d2180c3e28a4"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.2/imgpkg-darwin-amd64"
      sha256 "37c4e75aa7b83409448e6a0bc266c22174bd812842296d224d6fe9212c3d4fda"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.2/imgpkg-linux-arm64"
      sha256 "c5546f339835a57cf5505b85e7f817610a37a291c453bff52212b736d83836e6"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.2/imgpkg-linux-amd64"
      sha256 "56969766bfb23797ac9825e1b5782215fee0b4c6f28a7b8196babe4d3ec5c365"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

