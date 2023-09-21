class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.37.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.5/imgpkg-darwin-arm64"
      sha256 "1d16a9795f12adfaf88ac653ee4bc8123d1f0ac441099efabeeecd4e3541ccc0"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.5/imgpkg-darwin-amd64"
      sha256 "07ef96b0f34fdf4d984ceb3acaa8f34dd0d7c5e4fcbd7404f3ee4e2f424df1d3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.5/imgpkg-linux-arm64"
      sha256 "6cfdfa2127cfae54787c457dee52041be5210253fb887f4d01f92e6eaa50138a"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.5/imgpkg-linux-amd64"
      sha256 "264b058d9f747fbd4942d39e0a47748f907e4eea8ec7c69a20637c8ef9c7bfe0"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

