class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.50.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.50.0/kctrl-darwin-arm64"
      sha256 "876e74d5d142bedb008540d09961161618ce10490f4a9b718618b63b9cd8fc5f"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.50.0/kctrl-darwin-amd64"
      sha256 "739ed102ffce01a42e84bf1bc82bd2901e95d438dd701e789c578899119c385e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.50.0/kctrl-linux-arm64"
      sha256 "957a17fff540e40c60387682beb96de3b4444ebf222b5d771f8a1881d4bea65a"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.50.0/kctrl-linux-amd64"
      sha256 "617a4e3ad2e247feb09857086d796065dad4df73cb81dc59d1aa7bfa4a9aff07"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

