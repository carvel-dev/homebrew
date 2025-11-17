class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.47.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.0/imgpkg-darwin-arm64"
      sha256 "465b4843ae762c6a693fffe250a13bef37536cf6fd218d791165a919214447c5"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.0/imgpkg-darwin-amd64"
      sha256 "5e03036ecc48c3385618f6020bad13554493019dbb472062f6ccab28e4b01162"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.0/imgpkg-linux-arm64"
      sha256 "14d0083027eeba54a4804c561fb41d0c723f908ec91e073e88f3a64c52b54544"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.0/imgpkg-linux-amd64"
      sha256 "7602b6af24a818265dcb2cc0dc7f6117a3591f26e2c266f294800f99ae433da1"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

