class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.52.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.52.0/kctrl-darwin-arm64"
      sha256 "4ad82f494d00aba3aa2e471a8721d2dde14e5390064230d418041f693f4bf1dc"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.52.0/kctrl-darwin-amd64"
      sha256 "2e631dbaea16186bb6cec158d781748705ea425bd2e89d0a6c173f8ca2be3ca9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.52.0/kctrl-linux-arm64"
      sha256 "1959ba7885afb826c3f8760e69cb28a8b8917cb84075c85791c841d8f8f52c94"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.52.0/kctrl-linux-amd64"
      sha256 "355e239fd2c8fe952620c301792098b4bcaebdd965d760a1a8283dd0824a3782"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

