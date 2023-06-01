class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.37.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.1/imgpkg-darwin-arm64"
      sha256 "f206cefdff03717427135dfb8f77d8e1d2cf444911b60859e5d52a7582a2ef41"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.1/imgpkg-darwin-amd64"
      sha256 "a7f2de8111f3231ad6124e04222817a135c677ed69a52db8f881e810b9f8f92a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.1/imgpkg-linux-arm64"
      sha256 "8d41033b680c41fe17ab0ff80b88e9c40af68a8e7c48a7a2e71f30e8a8534230"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.1/imgpkg-linux-amd64"
      sha256 "84d1cd7be13566fe64789c031112831b37fe8625b08b1d2e1be2407c0998ba91"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

