class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.65.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.0/kapp-darwin-arm64"
      sha256 "3bc607405ae9e04a1743049203dbea4a5bad0f2ed8800b881f2b0e3e7b2e3073"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.0/kapp-darwin-amd64"
      sha256 "5e5ae7d8633f0551596f7c462e3850d2bc7a47df82aa7793ec309958657f21ed"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.0/kapp-linux-arm64"
      sha256 "c7be5fdbbc22d9efc7cb952c13c1e671a632af8530e7958eda89ff010cac78d3"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.0/kapp-linux-amd64"
      sha256 "9cb88745d189bbfe2423771d68f50f7222ca33187350470857cca124d3341233"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

