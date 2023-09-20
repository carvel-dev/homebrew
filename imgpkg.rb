class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.37.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.4/imgpkg-darwin-arm64"
      sha256 "29aaa23f5eca994520b057a73efc4483997a82977c0fc28968fd3dc27e138aa5"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.4/imgpkg-darwin-amd64"
      sha256 "514548fa5ac866254e91fa341c79e7323d01beb88967e8900535ea1de606cc97"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.4/imgpkg-linux-arm64"
      sha256 "9c95a4cda54a762941727f38279a7ee7d57f0372bbd7d333ac2791d6ad8a7fa2"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.4/imgpkg-linux-amd64"
      sha256 "37b67a4f4e93a5435e56232602b7b2abdbd2aa4093b4cb1043e1462ed60c2f8a"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

