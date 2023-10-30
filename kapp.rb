class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.59.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.1/kapp-darwin-arm64"
      sha256 "30545b3462a5125dc32056ee9a87f30ced001ad04dd045b5f4d3dc6bc41da997"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.1/kapp-darwin-amd64"
      sha256 "377e4bb84d44b9d80d68ed5b473036f20b3aab1eb5f2f6cc80c2df09ecd0fbf8"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.1/kapp-linux-arm64"
      sha256 "a0e4eccdc264b535d7b0ba1972b6fd29cd5aa1263ab7e996d5a4671253fd3cf9"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.59.1/kapp-linux-amd64"
      sha256 "a6da34c733514c2c51b96a12e70cd050250a45b2ee75d6966a904e712b307d15"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

