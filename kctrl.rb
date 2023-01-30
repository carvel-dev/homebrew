class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.44.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.3/kctrl-darwin-arm64"
      sha256 "4363f881226784e8fb6c393610a0e0c88ae156c4a236059dbb5f632e307f2313"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.3/kctrl-darwin-amd64"
      sha256 "7afb4d7f7155b7a0b9fd5efcf26e06f2852200192f4758384e6216d40a053b07"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.3/kctrl-linux-arm64"
      sha256 "3ffd1f4bf8990287d22a69079dcc7041a2bc39bf637666390ee67bc89c218849"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.3/kctrl-linux-amd64"
      sha256 "33484f7848ab2aaedfb7023d41772dcceced3f8ed5da25bc3724de8b14972abd"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

