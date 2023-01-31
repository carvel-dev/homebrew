class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.44.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.5/kctrl-darwin-arm64"
      sha256 "394a15be84725dc76830d44f9a515175b7952b9ec9b49ccea3c3de3ac273168a"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.5/kctrl-darwin-amd64"
      sha256 "c255cc265b212e4c364d0de6aa09178215c62bc0f8a26913a9ba96733bbd8fd5"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.5/kctrl-linux-arm64"
      sha256 "7580be47000a2574982b4953a00a01658f257c4ead31276426931593d7f5ee9a"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.5/kctrl-linux-amd64"
      sha256 "20c8fa5ae83de0a201f96cd23ef9b4a58be86469721ae2e6d7aba24042bd7dc9"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

