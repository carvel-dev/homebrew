class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.63.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.3/kapp-darwin-arm64"
      sha256 "0007ec49c089f332b8c3a5dcdf5c0587e63afe1609857e28ea961cea8533e6e7"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.3/kapp-darwin-amd64"
      sha256 "46b9961d8998c4a797ea3d648b83cf18be616945b48119d0b1e7a66813dc3658"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.3/kapp-linux-arm64"
      sha256 "dbdfa194067c420b5e5ed36cb99f008c9a2dec05f5aeebe770b854898d3de2c4"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.3/kapp-linux-amd64"
      sha256 "33702a40b6032ada742d73c59afeb393d0830a1913e3a599ca995eba3e68a57e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

