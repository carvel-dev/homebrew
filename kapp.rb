class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.59.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.0/kapp-darwin-arm64"
      sha256 "0954a8343d1ef7dac131e2212efd6ff1e2f39c898a242f280c4889e6acfc38e3"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.0/kapp-darwin-amd64"
      sha256 "ac1f2bd9f43f0d77465f8f4e4b2540a498c6fd3228d7e8452e360d66e04344c7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.0/kapp-linux-arm64"
      sha256 "59a8ddcacf82cec055f0ca9e66b1ea90ade138792db1b1ddaa72d653cc6d93ba"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.0/kapp-linux-amd64"
      sha256 "cc1cca783173badd5e74edc1f10decfcae85525cfece73b3d43acfda1eaccbe5"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

