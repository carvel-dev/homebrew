class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.35.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.35.0/kbld-darwin-arm64"
      sha256 "6576480fafe10abd700361f0aff24fac691098339ad2e8aa3dc36f76a975e979"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.35.0/kbld-darwin-amd64"
      sha256 "f0fa574d1dd1c4dcd6a763d38e746a918477ac61a6cd52e8e9e1bba6714259c9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.35.0/kbld-linux-arm64"
      sha256 "54e92ff92e66a4b86d7768019cb3b40c87e0e6084380c9a765679b2d342fc4f8"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.35.0/kbld-linux-amd64"
      sha256 "1c3f0e4171063eef70cdabf1730d3557af992aeafb423755e71e9d5f1aea2c9b"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

