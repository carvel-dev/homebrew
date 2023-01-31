class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.32.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.32.5/vendir-darwin-arm64"
      sha256 "ccc34a3ca00eaf8965e8e5ba5b9e249399d218f10452cf70981afcfecdb158b5"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.32.5/vendir-darwin-amd64"
      sha256 "33c9654e6e5e865f45f411bf45ea12e28590fdcb43961f758b6d3b28be4c1caf"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.32.5/vendir-linux-arm64"
      sha256 "f05b9f453702f6f50cad66aecef4156b10f48c3b595cbad82c5940c155ec57a4"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.32.5/vendir-linux-amd64"
      sha256 "0d8a45d2d85647ce932e1d630d49668e96552140ad33c6adad5f589bb800bb8a"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

