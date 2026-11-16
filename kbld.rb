class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.50.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.50.0/kbld-darwin-arm64"
      sha256 "21b9a581c2761b69a5b01ab9aaf8d996d163a8d3fd1c397ab92c1d3122dff5a8"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.50.0/kbld-darwin-amd64"
      sha256 "5e06f38ce5f3be3a28cffbbc94a7e0ee122843f0e8624527bd402b149b066729"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.50.0/kbld-linux-arm64"
      sha256 "ac12dad160aefa7e03558172e83825c524c1bb3d1a0b7b852be591ad2ee6fd42"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.50.0/kbld-linux-amd64"
      sha256 "5f3eae9bb1e15f745d9e5a1a3b422bcc3aff265f0b178392c2de617a5bbc02ea"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

