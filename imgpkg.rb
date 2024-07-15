class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.43.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.43.0/imgpkg-darwin-arm64"
      sha256 "2a0c2adb6edf0d67a0677c6dcf036c34d1f26af2858cacd9d114669829cc4848"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.43.0/imgpkg-darwin-amd64"
      sha256 "02a7e3fd0142c1053c14a87084820c1940f34c7372c16d883ef54091a37ac30d"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.43.0/imgpkg-linux-arm64"
      sha256 "099627a79b7edf9ba99321f4dc4e43404bc83c42930864c9db650070e65cfb5a"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.43.0/imgpkg-linux-amd64"
      sha256 "4f87f219012e48b917d7aaf8b0ee71729f2572fc1a3deb7483bd8744fe2e1a06"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

