class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.43.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.43.1/imgpkg-darwin-arm64"
      sha256 "9cfd34a67048dd71498d2075969592f7db181e639848239c47a47426ebbb03be"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.43.1/imgpkg-darwin-amd64"
      sha256 "578b81cedbba68057fbd5b917a337fb34c8ed7406931839efc01608668aa9bd0"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.43.1/imgpkg-linux-arm64"
      sha256 "7cd1ecf4b394770ccfedc38f3b4f97a1a3d49447fa0bfe1e28a4f99751597ddf"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.43.1/imgpkg-linux-amd64"
      sha256 "d36ccfcc54143d2475cf09b0247c88bccf24a7aeb062bd9bb8cab7cb58135fcf"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

