class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.48.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.1/kctrl-darwin-arm64"
      sha256 "4d09f7111da35e56cdc11386eac632b0860242a19a4f92b6a4a7529f999bb13f"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.1/kctrl-darwin-amd64"
      sha256 "e07abb54ed8dcff3a6526fe4c5d3a49fb51ec61e426ccad322792fd41bbdd943"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.1/kctrl-linux-arm64"
      sha256 "822e9c70d0f810c65324bc78fc3469e9f850a8a9c75a9876a272bc9c8266db70"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.48.1/kctrl-linux-amd64"
      sha256 "c6d322ed950ddc6112c1d1dba1feeabc24f222e4a24decba2d60c02403194406"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

