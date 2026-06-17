class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.49.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.1/kbld-darwin-arm64"
      sha256 "8b7c93828b96065d7fcdb51989e59462af443f59c8a88beeb421c5f5ff0ef65e"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.1/kbld-darwin-amd64"
      sha256 "d6c6dd4af41bea5cb3c8914e9b43536fc3c606592ddaaa98dda08b8517400969"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.1/kbld-linux-arm64"
      sha256 "b3f5277ff4819de189d1ebd6e455b3390308ca43b122b5bb3c40a7bb9e6f30c4"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.1/kbld-linux-amd64"
      sha256 "437d38d3e59d01dd0d1ad75b4eb67fbd04fe51ed3de1ed55c3f7b3b7d5ec7546"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

