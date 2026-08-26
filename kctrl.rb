class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.5/kctrl-darwin-arm64"
      sha256 "461b4aee8ad54619b0a4cb44516b88761e69c778825f10de103f9ea44ad1b52c"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.5/kctrl-darwin-amd64"
      sha256 "1c4aad0a172793d9872997612c31faacc7e549106c5f00f719134e1a8bad5de7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.5/kctrl-linux-arm64"
      sha256 "e2529f8e290013374217512000c1890bf726d89de1138e90e739b3482fecadde"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.5/kctrl-linux-amd64"
      sha256 "02921f59b6ad5ba0d3469d43df2e1791504e0e967d2b5c0445e204d2063e31e0"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

