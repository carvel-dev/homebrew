class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.39.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.39.0/kapp-darwin-arm64"
      sha256 "dfd5d32c845b62fd2617342424fb4376ce9a5a6fe644a9bbdf4b9f31856533aa"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.39.0/kapp-darwin-amd64"
      sha256 "43d79433d3d4dad4ffde7c775ea99f5c6b10c8949d54fd2a048ba66aaea89a6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.39.0/kapp-linux-arm64"
      sha256 "e89b2bcdf42edf04b33bf57f3c033b146ecd763a52d3d7ec99d501fa2f0ae423"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.39.0/kapp-linux-amd64"
      sha256 "2120a627a867e04840d6e0e473097894a3b74b54b62f231b8df3f8670c4e80a3"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
