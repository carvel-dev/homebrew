class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.41.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.41.0/imgpkg-darwin-arm64"
      sha256 "8553577a8db76e9aee7963ba2c6bc88c5f5dab04286c51e05291ab87dc8d7290"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.41.0/imgpkg-darwin-amd64"
      sha256 "1822aef7b14f97da0e1d12946362a773863e601c57d943a886ba86f71fcc6777"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.41.0/imgpkg-linux-arm64"
      sha256 "2b1bc6ecd757a099b788474a0bf81748c69b5745443a351db0558fd3fcd431df"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.41.0/imgpkg-linux-amd64"
      sha256 "50eb0ff74447c2d46ab9152794ae11076233390f9a7747a9056985a8de072be0"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

