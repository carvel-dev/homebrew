class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.27.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.27.0/imgpkg-darwin-arm64"
      sha256 "d1abdd23b454ff08549b4a50bc7007022f3d956bb355a16d052c7271d3cce6a5"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.27.0/imgpkg-darwin-amd64"
      sha256 "847a59826b4b5ac676f7ec56f4a3481e6053d8e2e714b8ea93d0e74adbfa6b8b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to github.com/vmware-tanzu/carvel-imgpkg"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.27.0/imgpkg-linux-amd64"
      sha256 "72d676e270e9111bfc88e4d4281a2ed7c608a8b8d2af2a0011e971d3226a1b6b"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

