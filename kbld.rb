class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.48.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.48.0/kbld-darwin-arm64"
      sha256 "2360e61e8a96215ec4d5b0ee7620b2942e17a157caadd086a540c57552ac6a48"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.48.0/kbld-darwin-amd64"
      sha256 "950ecd6562fe99df46dd34f7b32706ef2583a428fb4f1c7563f29bd97b5082f2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.48.0/kbld-linux-arm64"
      sha256 "8f94aecad48df7ee99fa347eb24efad71ae0fb6ae3be03677a3c7d1ead359f1d"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.48.0/kbld-linux-amd64"
      sha256 "52521ed5eebdddc2e7c7dc04da775270677a450f958198d0c26b3cb011f58a29"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

