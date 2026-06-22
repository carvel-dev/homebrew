class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.3/kctrl-darwin-arm64"
      sha256 "69e5b21829070ea721415f9e4bc36fb0c06400548b31fd9fb52e97b4864e7f3f"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.3/kctrl-darwin-amd64"
      sha256 "82da273c5ededd4b5650298f7f42d5932e5a382de828b5421665764a72070821"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.3/kctrl-linux-arm64"
      sha256 "d288687683847fae237c41a15657a758c967eba73cf546cba9bbcea2f6589304"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.3/kctrl-linux-amd64"
      sha256 "4d7738e8dcb823f17fd01a7d317be9fba66b0be6d621051a472426becdf6b6b2"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

