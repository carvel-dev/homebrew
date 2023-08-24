class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.47.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.47.0/kctrl-darwin-arm64"
      sha256 "19f2e538abce7f69963c3b3993208414da6ed05d96c88113f8675ad9f6756b08"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.47.0/kctrl-darwin-amd64"
      sha256 "63b5c22c080958930b51fcb860bf9c58e12306119e4d9b2a236cae1aa48dbc5e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.47.0/kctrl-linux-arm64"
      sha256 "02cdc07d374cc364a7dd2cf1132b78579a1ba2d45958156041342b7a17736d61"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.47.0/kctrl-linux-amd64"
      sha256 "7c85e58a604f3989ac5d71ea8b835e3d3e370264c9294de57b1df34d51907324"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

