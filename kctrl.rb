class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.59.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.7/kctrl-darwin-arm64"
      sha256 "bf600514eaadef905a51d3e9547a74073272da5ee4712cf95e06d79b6f6afa39"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.7/kctrl-darwin-amd64"
      sha256 "baa96a29f9bd3ffdc6018fcde6eb56a0dd88d6eea2a6178d04f8de0ed4f450ed"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.7/kctrl-linux-arm64"
      sha256 "577add084a82ad22664ce810e5a54ce09e30350fe74b646542d8ab51855a82bb"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.7/kctrl-linux-amd64"
      sha256 "74df30b10d8575e1b59e71ccf22e844a321d2eb0a163d9e92371404c8b2e6fd8"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

