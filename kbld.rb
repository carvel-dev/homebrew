class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.42.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.42.0/kbld-darwin-arm64"
      sha256 "69400f4be088d4d6157a4c0e80184eb22cbe8f557b21b03eeae74597f491591e"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.42.0/kbld-darwin-amd64"
      sha256 "aa19ffb064f38a0826c73fb34c58ce4ff0b1c508afb3e03f2f8d76b7e29202a2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.42.0/kbld-linux-arm64"
      sha256 "6d8bb0e87fd88d0df2357519ba680c61cf9560b30c199d0a2d60873644ec42f1"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.42.0/kbld-linux-amd64"
      sha256 "c5eb701a9682e73a8caa636a735bd2a587343bcbdf6c2eaabb5d99b9c57cab7e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

