class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.59.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.3/kctrl-darwin-arm64"
      sha256 "8f8016c4ce351e1065811c491dcb687174d82efe8b6205bcd9552582d9e86bc3"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.3/kctrl-darwin-amd64"
      sha256 "5524ef6ec2ad87c8b6491275d344dcdec897973e9df20ce42dd11a7e958441e9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.3/kctrl-linux-arm64"
      sha256 "06b41d8bd1313610be2412be971af01abd89f0a41befc27f51331defcec7adf8"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.3/kctrl-linux-amd64"
      sha256 "94ad503a023c5df10095e72f681f0fc564ffed361538ce666db21ed11958ee01"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

