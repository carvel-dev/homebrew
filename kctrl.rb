class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.45.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.45.1/kctrl-darwin-arm64"
      sha256 "fc09f442acd759e8024511796ad65e124ae035723d39bd02b21f7fd91a383c4a"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.45.1/kctrl-darwin-amd64"
      sha256 "df475a89e7e6bcb93c54e973382d19f397e854d32ab237bc0eca98218ba575a6"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.45.1/kctrl-linux-arm64"
      sha256 "340756165a88e4d2e242d812259362026b418982f0484412900c3346b292b7de"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.45.1/kctrl-linux-amd64"
      sha256 "865a2ffc10a32597cf026656382829e9b33bb42f55fad70338b4c59aa5de33e5"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

