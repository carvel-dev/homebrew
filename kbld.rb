class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.41.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.41.0/kbld-darwin-arm64"
      sha256 "c03fd03dee99295ad6cc48145194e12a4c20d47f9949e156e0464b98218fdfb1"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.41.0/kbld-darwin-amd64"
      sha256 "be8ece209d8c5b64ddedc8aa5b26330d5a47723c885b5cbc76c8eb9366322dfc"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.41.0/kbld-linux-arm64"
      sha256 "f89a764ccc1fbdf48bf0d06c74eafe2514a65932566e890dcf25b246085a2c2c"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.41.0/kbld-linux-amd64"
      sha256 "8b00fa6a077496d210db1b2f45097fc891a77c565342bef5618457d1de36e834"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

