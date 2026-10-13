class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.49.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.49.0/imgpkg-darwin-arm64"
      sha256 "83add15b35fd1e1d032a9ad988225725c9a3ef30160363b9085f172863787df6"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.49.0/imgpkg-darwin-amd64"
      sha256 "9f1284d1eaa307b5b29612cd80ec3933bb59af58e6643c40af6b64845a262524"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.49.0/imgpkg-linux-arm64"
      sha256 "bd6200d76c28681328ad8636071730d76c8b6cfbc700b0c53477793ca1e0a0f4"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.49.0/imgpkg-linux-amd64"
      sha256 "ea4d83bc88d5c9c6deda3951a80f621ea16769b94d4815edb1078399fdd9a5c3"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

