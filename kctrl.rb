class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.48.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.0/kctrl-darwin-arm64"
      sha256 "63a6de3e3742768cf0f3875da4a03dbae8f5319c0c35ee2a2fa8f7698d62be2c"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.0/kctrl-darwin-amd64"
      sha256 "2a45c171589d5b2f6f7207eb2da12093e86c14e5fed7c8a886e559ac5d030406"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.0/kctrl-linux-arm64"
      sha256 "e751db01290452dc6e2e0eb00749611e7f71ee1645bc54de10d44f5bec946908"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.0/kctrl-linux-amd64"
      sha256 "f623be5b9421f00fda9e779888f9d604b996b0f8797b6589b52a366a391e7349"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

