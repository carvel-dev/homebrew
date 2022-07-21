class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.30.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.30.0/imgpkg-darwin-arm64"
      sha256 "aad0e722fe0a4a7e7af4fc451cc06a8fcb06a8154f36e79e755639833f00faad"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.30.0/imgpkg-darwin-amd64"
      sha256 "80dc36566ed41638a120434091490d6d46ee68422592f8003025211b16009c13"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.30.0/imgpkg-linux-arm64"
      sha256 "b1613051cc1c2d432d8daca4e96fe67ce1fa2ac41eec6a49f60e8f6da3b56a95"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.30.0/imgpkg-linux-amd64"
      sha256 "0b067b406775ce3b3b4ac668a6d1b89184b8339480f07a48de74a338b334e7b4"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

