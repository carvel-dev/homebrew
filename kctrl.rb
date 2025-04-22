class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.56.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.56.1/kctrl-darwin-arm64"
      sha256 "eb73bfb06383b88b85a882c9bce080f965c3eabeed735b63709c27ae25e463ed"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.56.1/kctrl-darwin-amd64"
      sha256 "0cc78563d79c2efc04187d909ea253a762cb974492b6983d804ea16f6a07e52f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.56.1/kctrl-linux-arm64"
      sha256 "43a11bed3e52028b268aa101cc546c915adc5bc3ab586bdad01a6f4fde554bd1"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.56.1/kctrl-linux-amd64"
      sha256 "0adb8e1060fbd3b9cc7c4f926863732ac0be2ae1e746e7232f0e5cd61da00b34"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

