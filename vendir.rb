class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.40.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.0/vendir-darwin-arm64"
      sha256 "b6defba97d36e26e02df8b263de17061bbbc432365c9d26070eb7a837d7e33fc"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.0/vendir-darwin-amd64"
      sha256 "0bf3840619436908b11fce2c7015d928450b41a3b9ef19fecc6223ff2ed084a4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.0/vendir-linux-arm64"
      sha256 "c43469a085dd0f6cebdab97a7747710f9dafa4886dd5e0ae7c1d3f975a12756e"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.40.0/vendir-linux-amd64"
      sha256 "3e076a452d88d6e3bc190d527f4d7c949ab6eccae19bf5d3cbb910d53724f2b9"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

