class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.7/kctrl-darwin-arm64"
      sha256 "71056cc2cd05922ed57b51d9e87691afc4a492f36489ec52e6e2fa022393339d"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.7/kctrl-darwin-amd64"
      sha256 "cda08e5c01a66228c7a03894a2584ac232af63b839037b0855b5cdd12948af5f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.7/kctrl-linux-arm64"
      sha256 "f8da70039ee73c030b263017ee00120abc6e80fac1702d553295f85e64bb6f51"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.7/kctrl-linux-amd64"
      sha256 "3c54bf3f04f25ffe04ecd613e71a1c1c5410c95afc75839a66caf10975e7bcc2"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

