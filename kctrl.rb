class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.4/kctrl-darwin-arm64"
      sha256 "74962b279a9302d9cc137678d55c9173163abffb1a968e35a7ab2310a3843fb5"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.4/kctrl-darwin-amd64"
      sha256 "734fcb6bcf5f7de4694a9627071f9296dbb6535c2d03b599a2c1e46dbd00a49b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.4/kctrl-linux-arm64"
      sha256 "f9f7ef17c8447523aa7f239168fae2933bdf8ca849c48ec4385806047647a26a"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.4/kctrl-linux-amd64"
      sha256 "7b88d7bbdd0059175e7608284b291a935555abc71575b951063a3ce2bdc408ad"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

