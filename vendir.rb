class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.32.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.0/vendir-darwin-arm64"
      sha256 "c47aca50cdcd53906eae034773ecd30d34e58e50e324d32ca5e6b544bbbd879c"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.0/vendir-darwin-amd64"
      sha256 "5964af6123563b63cad7b9b5525d49814f8f2048a75bb811888d87618a358c30"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.0/vendir-linux-arm64"
      sha256 "e66c0c6c8e3e89a49b7e6a8ad216d8f2b44e9b8d35345bfd85c354eea4f4177a"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.32.0/vendir-linux-amd64"
      sha256 "0b52c170f4a30c2b6213ff0048ecc89c9c25c3e4da56eb1e095fcdb335bd82ed"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

