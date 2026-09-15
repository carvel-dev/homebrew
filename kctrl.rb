class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.8/kctrl-darwin-arm64"
      sha256 "04f5a7350a9343d91d19c75dae0dc46546ca00df9954bcc8ea0dd4c6f633f49a"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.8/kctrl-darwin-amd64"
      sha256 "6315b0b189a9c01c4f1daf782dfdbf43a4dc2ba83b06cfa4e93e8d8b6eccb789"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.8/kctrl-linux-arm64"
      sha256 "1964484d2d432fbac03acaad9c6bd0fcd759c6084ea2978631bf8a6070b52406"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.8/kctrl-linux-amd64"
      sha256 "0d909461445bc43775a821e95a80e129cc914a4bc9e118afe5ccd6cc565dccb2"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

