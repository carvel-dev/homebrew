class Kwt < Formula
  desc "Kwt"
  homepage "https://carvel.dev/kwt/"
  version "v0.0.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kwt/releases/download/v0.0.8/kwt-darwin-arm64"
      sha256 "b303037a022ad260c22517c49f7368eb101d48f7056cc2d82a33bbf3d659b989"
    else
      url "https://github.com/carvel-dev/kwt/releases/download/v0.0.8/kwt-darwin-amd64"
      sha256 "ea9e6eb76b203799d9f0d3177ac32b9d1d8e531bae363141dfe7030cb6e53a88"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kwt/releases/download/v0.0.8/kwt-linux-arm64"
      sha256 "7b94a134cbde5ff2e245d102f54b9ac9f81b3fcc5e54a5cefecc1e5845b8a65f"
    else
      url "https://github.com/carvel-dev/kwt/releases/download/v0.0.8/kwt-linux-amd64"
      sha256 "1022483a8b59fe238e782a9138f1fee6ca61ecf7ccd1e5f0d98e95c56df94d87"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kwt"
    
  end

  test do
    system "#{bin}/kwt", "version"
  end
end

