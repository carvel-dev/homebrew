class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.34.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.6/vendir-darwin-arm64"
      sha256 "d20e38df170128bdc85fe5e45823570ab8728ab2900f1a5e65b4e8eefb6d1b42"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.6/vendir-darwin-amd64"
      sha256 "9ec92c3fa318cb90592ca46487da583965e0a0ff7ad3fe5725cc5b08acbfff1c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.6/vendir-linux-arm64"
      sha256 "395efe9bf0130d1192fbf262cd26472c7c931061190e50ffd66e5f935f554634"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.6/vendir-linux-amd64"
      sha256 "c1764cfb93f12325b83c0142214fd05b5f7985b7cc5b8278e5154397adb99189"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

