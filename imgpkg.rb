class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.44.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.44.2/imgpkg-darwin-arm64"
      sha256 "51e2b75f809b10191afd7566bdcb7390fa6aec2d34287685ef53ec29f6569657"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.44.2/imgpkg-darwin-amd64"
      sha256 "133cc95fe9baa7a3fa41cdaab6e5ef60a1f54c76731be5f1b0cac577c360cc8d"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.44.2/imgpkg-linux-arm64"
      sha256 "4aff1dea4d9f2e84ba321e2ff9a0194660508fe9267c44d9cd57e89d5eb3d8ee"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.44.2/imgpkg-linux-amd64"
      sha256 "904bcc6ab88257be95970ca33cf03a49a07e717872deda4292ff963d0cc338ce"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

