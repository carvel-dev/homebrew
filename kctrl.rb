class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.46.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.2/kctrl-darwin-arm64"
      sha256 "8307a8dc829f03f81eee3d16ce88ac9ebf399327f47c569763818ab0a3bfed3b"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.2/kctrl-darwin-amd64"
      sha256 "71db9edf423395a3355655edd1271bb4d6082b1a26db0891603ac83ad23ad9aa"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.2/kctrl-linux-arm64"
      sha256 "168e512214d841107caea00650fe32b48cfc5e3318f7b5eabe2fa0d3cef4f0a4"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.2/kctrl-linux-amd64"
      sha256 "f17d2d016d16cb834ef961f1b06ad76298eacc7262eea552226e686021a801cd"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

