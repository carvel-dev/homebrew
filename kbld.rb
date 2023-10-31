class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.38.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.38.1/kbld-darwin-arm64"
      sha256 "87a048146d0f183334d21747f14dd47feb79c0e432e2bffae01fe46220fc4495"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.38.1/kbld-darwin-amd64"
      sha256 "f3f735fc6d8666eed8aacb41917f4e2c77b9c4149c94e7e19d90a948d1ec2948"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.38.1/kbld-linux-arm64"
      sha256 "dba78f59d887cc7433595a1e7754fcbc3a7a53f5fbbb23b2798d95114795ce78"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.38.1/kbld-linux-amd64"
      sha256 "00e114286588307d0785c4bfb1bb8f68acca1ea186eb79cd8475214214413291"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

