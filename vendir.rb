class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.34.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.3/vendir-darwin-arm64"
      sha256 "457a4c21967fcd1ac8e90058a92e8650a44054b87f10498b51e335a6bbf36c16"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.3/vendir-darwin-amd64"
      sha256 "6a5290066d8fbe26aa0603902825bbca55b97f011e97949677eb937ace2d2e3e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.3/vendir-linux-arm64"
      sha256 "b33b9c6172acbce88baf17ec38c16e9cd8d99ad1f3470d999e444071702bd06d"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.34.3/vendir-linux-amd64"
      sha256 "26cdf2710cd4f5198c2b8beaab88f70db4075a82660963a01b271d75cd8e5779"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

