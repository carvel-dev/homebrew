class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.49.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.2/kbld-darwin-arm64"
      sha256 "6c51db7c284d20baa78ac7f616dbbe2794b934659972618a3887bb5e234ad03e"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.2/kbld-darwin-amd64"
      sha256 "7b4d564086cd66b83d2389e285a672f7390445244b0bacb0bbb023c795e883c1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.2/kbld-linux-arm64"
      sha256 "89c19adefa4c15799fb4d036dc747c7737091190df28ef277398037fbe8947f0"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.2/kbld-linux-amd64"
      sha256 "8715db7932129a279b25060a9b90cc0eb9221d111d9924af996d6ed82de5b391"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

