class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.34.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.1/vendir-darwin-arm64"
      sha256 "0be048538f0c5c90eeed5c0b327f2580caf6c0fca98fb7add84570e721a42189"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.1/vendir-darwin-amd64"
      sha256 "7a36460d6f1e4cd1110dad41964da78212cf4688234d54adc8b5d1796949d9fa"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.1/vendir-linux-arm64"
      sha256 "46b0f286ddee726c302b8f2e2d95c65f1283623979301eab7b5c1fc4f57d5c88"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.1/vendir-linux-amd64"
      sha256 "991075f52bf8b1cde5545bb0862ce418d1e2ee363968f10c411f321a10cbf710"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

