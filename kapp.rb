class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.52.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.52.0/kapp-darwin-arm64"
      sha256 "d2771ead31f944726e0372c05396404a4edeeed568b17ed6e9d0f991a455076c"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.52.0/kapp-darwin-amd64"
      sha256 "993285cd7747862da92d68c2faab102e01a719a7de691d7630b28271c0dde526"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.52.0/kapp-linux-arm64"
      sha256 "7f5564ac3b670dd2ff51953372924c2880e59c8aea38acc21f433044ba18d707"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.52.0/kapp-linux-amd64"
      sha256 "9c6ab08ddb4f950eeed9df4b8618d43d3cf82f076c24073885904b3c14ba5bd7"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

