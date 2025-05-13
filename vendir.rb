class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.44.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.44.0/vendir-darwin-arm64"
      sha256 "2a3c5b65a1ae399034b1c0e87d210cd7da828f1d855cbda4590e1a3f93406c77"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.44.0/vendir-darwin-amd64"
      sha256 "957b7ed5abc73a6a9948901a9d5cb6cf33e1d20b0400ab7016177519a339293e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.44.0/vendir-linux-arm64"
      sha256 "db33e705d818f4fa1fb3c19bd97167219188650b96e307a8e72620329aec9a91"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.44.0/vendir-linux-amd64"
      sha256 "a2befbb9dd4f174aac7a34fe0bd50b1e5dc356dadaed0183a24b817f2fd1d094"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

