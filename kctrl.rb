class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.9"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.9/kctrl-darwin-arm64"
      sha256 "37086f4721b175dc6f53f6a9fff908bce1ad50e2683a4f7f9fb8928a16ade0ed"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.9/kctrl-darwin-amd64"
      sha256 "6329d858ff5d7e9e3e711e93f149ddf4146922ae95d4baa5fb5f15eebcb1f2b3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.9/kctrl-linux-arm64"
      sha256 "478fb543a435a5761c303a1929bd8f81cab475d03abec06a6b4902121e1d86e1"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.9/kctrl-linux-amd64"
      sha256 "842ea6448d712b103e60b2e2acd91ddc7bda7ba789793af793d7899a64e2c2b0"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

