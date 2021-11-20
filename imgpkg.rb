class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.23.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.23.1/imgpkg-darwin-arm64"
      sha256 "625721b734db8450cd6439303ce3c12734368508366f01c2d1f1c834851682d1"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.23.1/imgpkg-darwin-amd64"
      sha256 "20b862f5d60084068328100f70e98c81142c29eab9db484b31a277d85721854a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to https://github.com/vmware-tanzu/carvel-imgpkg"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.23.1/imgpkg-linux-amd64"
      sha256 "dc99b19e9e215644d7c7cbef60afa7ad264275d4b1d72a2f352fa07faabe7305"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
