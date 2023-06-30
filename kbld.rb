class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.37.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.4/kbld-darwin-arm64"
      sha256 "e5a689dfab13682f75b89214a971274912a5060910457ea48504a22aa6fa72f2"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.4/kbld-darwin-amd64"
      sha256 "2503d10022133005f03ae0f5a7ee46460799f6d7950c2967423820b4acbcdc5f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.4/kbld-linux-arm64"
      sha256 "9867106fb543f10135c29986bea8256ed2d6a76b00faff02453a9c932c84e589"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.4/kbld-linux-amd64"
      sha256 "814dbd68282717481db7bd99e56cc3f6ff0664880daf880aa44c88ff10d9588b"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

