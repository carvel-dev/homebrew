class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.33.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.33.2/vendir-darwin-arm64"
      sha256 "87b744e780efc82ad457f9fa2ce6a67cc0c9e9803a05d1004db27e8b02b5dea9"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.33.2/vendir-darwin-amd64"
      sha256 "b70f3122892fde1d3e1b2dbf9ec25d2c3a00616741a9d9a38fa853023e9e9671"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.33.2/vendir-linux-arm64"
      sha256 "8ed6efef4233ad226c3301f381d4341a096518b7b445fc7e418ed10ed7434159"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.33.2/vendir-linux-amd64"
      sha256 "2cc8f8db317685f7d270264712bb31efbfde14e95b065f31cd1e2d8c9eeb2d34"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

