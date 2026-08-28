class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.6/kctrl-darwin-arm64"
      sha256 "0f293f646f02dd20b4d213e1c68a138c647cc78828e4aa3ae3e8923d494d59e0"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.6/kctrl-darwin-amd64"
      sha256 "0ef91acbd47c36621a3e9a10e3ee661038c94f66b3ce9b870a73b1aacb0c90b7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.6/kctrl-linux-arm64"
      sha256 "8b7fc2b590bc072b71c037919231f4915ec415731b497bd9081e1b9c8eb48087"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.6/kctrl-linux-amd64"
      sha256 "0b6451e64055a2203e72bd1175892db8e17b23dc3e23edd7d60ebe42b063c036"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

