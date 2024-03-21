class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.50.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.50.2/kctrl-darwin-arm64"
      sha256 "25d89eb2a5df97e5539429eaba48f7ce3b984e7357516dd5a62532b09d7bc224"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.50.2/kctrl-darwin-amd64"
      sha256 "81cc3a73fe9031650506dab614002c240effe1957b7739f8e622f03d08b1e42d"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.50.2/kctrl-linux-arm64"
      sha256 "1ee3a40b740fc78d88502b23d36036c66bae479829065a3ccbacd081a6074137"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.50.2/kctrl-linux-amd64"
      sha256 "d399b865ad2081cc4761d57de00d0d93ef297d7198e7e329c3f195e47af79573"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

