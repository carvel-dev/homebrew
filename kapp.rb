class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.45.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.45.0/kapp-darwin-arm64"
      sha256 "5590ae83587a8b00545c7614aa962acade7dc9614bb39179f7fdc07e4add7c46"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.45.0/kapp-darwin-amd64"
      sha256 "44f66b7ed664e4537b2caa0453aa239f16e20c028b11fedc22f46f3cac3ba9fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.45.0/kapp-linux-arm64"
      sha256 "59c1cb33743efd2b6b3c2cf53a77a13435a6d3f7e9fc0563905d169e2359d4ea"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.45.0/kapp-linux-amd64"
      sha256 "9d2c0441729bebe49e5fb9a1a7b7088f0bee4092ba23e267339a9478948c5731"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
