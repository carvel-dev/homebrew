class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.2/kctrl-darwin-arm64"
      sha256 "ae35d054b4ced49c509e67c9597ab7d8ae98b7d27e2e1144b31bf5004060a411"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.2/kctrl-darwin-amd64"
      sha256 "184cd3e1819e64dc0785ed9f285ab6fbbf475830c63538b73f7d84cbd257b249"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.2/kctrl-linux-arm64"
      sha256 "438416f26db347bcdab57d3d62de8c9fcd82250d1340ed1fa8a70072fa294b6d"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.2/kctrl-linux-amd64"
      sha256 "f1d493bf05c771cb691f120ec7dc4f44fa4ffc8c211a57b3b8293a9131382402"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

