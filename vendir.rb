class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.43.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.2/vendir-darwin-arm64"
      sha256 "d3f327c8fde2513742cbcb1ffe093c26aff7a87333a38be65b2f15f7e1945bc7"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.2/vendir-darwin-amd64"
      sha256 "6b53bf9d0f85daa7b2a1e7705d8fe74d62df624ac093cf7161bd9e77988b4963"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.2/vendir-linux-arm64"
      sha256 "29cb3224debc23f1aaab46bb8f26bf0d094bdb8a557fdb6e4e04465077762e25"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.43.2/vendir-linux-amd64"
      sha256 "172e51a712dd38adecc1c2edaea505ed63079bb6a42f8d613a8da22476f61cf1"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

