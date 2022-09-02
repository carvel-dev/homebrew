class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.32.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.32.0/imgpkg-darwin-arm64"
      sha256 "fbd72290ebf712c0efa2e4f5edc6e46815112b0b97af3d03bd1f9fd8e31bad59"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.32.0/imgpkg-darwin-amd64"
      sha256 "f6044cd0134fe94ff1117b15545e8b6063b04e6bc602eace79faecfbfa821348"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.32.0/imgpkg-linux-arm64"
      sha256 "9242a604598632d18e673d4ddf0308c0864c32458443b20ee0ff831b394c0070"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.32.0/imgpkg-linux-amd64"
      sha256 "bfc210872c18fd45e8012aadba27588f51c53cb237e397439abe5fe999e3a6fd"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

