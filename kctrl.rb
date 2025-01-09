class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.55.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.55.0/kctrl-darwin-arm64"
      sha256 "e4ebf09da2ebc6d7afbe1167cf75de9f5191b534750db3809ef837cbad364002"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.55.0/kctrl-darwin-amd64"
      sha256 "6b6ce86d5cfba186e25f6de085787eefa4937465fe56de0470d359749a205119"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.55.0/kctrl-linux-arm64"
      sha256 "a1c51fa4ca40a6041b4b9d01e7fe8103fc2081b2dca3231104504bd3f0a06b8c"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.55.0/kctrl-linux-amd64"
      sha256 "d7dfb3b306d957486e14631e3aa6f5a4c7dfc8892bde5eb1a233635b188c0b2a"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

