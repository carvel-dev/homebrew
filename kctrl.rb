class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.59.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.8/kctrl-darwin-arm64"
      sha256 "456af6a4ad95ab87674b4c7dad6fbe53fa93b3d626ff56beda342eb09f81977f"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.8/kctrl-darwin-amd64"
      sha256 "db441c820a5d1d686ce4540532e37cbf47543d7cb1fab5d965df0949707d6ad4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.8/kctrl-linux-arm64"
      sha256 "57059c6486d57d8df425fc79cf4b04d8a6c58d8936de83eedf94a809127d7d45"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.8/kctrl-linux-amd64"
      sha256 "76a5f88d562b8ed751d7865f3e328e0b60e8e4682e5c59bae6223706881752ab"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

