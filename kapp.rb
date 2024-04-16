class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.62.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.62.0/kapp-darwin-arm64"
      sha256 "88d6ed91f87571e892b60fc57b2e3526cb49db0c22531da392cd380c6b4a8ede"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.62.0/kapp-darwin-amd64"
      sha256 "b4b980d4bc97508bec2416bc50888f55c7e4d96ada71a072003d2eee571db995"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.62.0/kapp-linux-arm64"
      sha256 "10e2e0b165202ae355501516f0b34de066523a384970f8423d8295ca79c16133"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.62.0/kapp-linux-amd64"
      sha256 "6eb24733364213967c434ca77a7b3516f80c962e1da1ba57ce4c495556cf1585"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

