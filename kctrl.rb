class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.46.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.1/kctrl-darwin-arm64"
      sha256 "bf1e4a68b3a3655f60698dc7a06106d7806c9bd02aabffaa909fce269e1f00a4"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.1/kctrl-darwin-amd64"
      sha256 "f12c8a79cca3d6742e9cecf3f84f6766c64cff513b660e1ddabcfaa17e3eaa54"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.1/kctrl-linux-arm64"
      sha256 "d542d3e76406de0558880c1631280ef7d31d05770e36ed8f944556021d5be1c5"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.1/kctrl-linux-amd64"
      sha256 "f8db054db89e204d2b1cab165998ac1434a9f5fa8fc4ffeae52a4c17b1e52942"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

