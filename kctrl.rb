class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.48.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.2/kctrl-darwin-arm64"
      sha256 "fb01dd8172169aa43190d1001241114caaa71a1584daa0472b6b85eaa97a8199"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.2/kctrl-darwin-amd64"
      sha256 "af2ab18d38a43cb78ec1259c6699f595b913ce24bdd72015d1421a9218cddf8a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.2/kctrl-linux-arm64"
      sha256 "1ffdc8cd9d48b68789c567458b046ee57636981dd3e7b6eb93cc43ea6af6dad1"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.2/kctrl-linux-amd64"
      sha256 "d46ceb6bdff62a5fdfd80db00a21cf309475868e360aae0669535e032389f930"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

