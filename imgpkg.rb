class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.23.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.23.0/imgpkg-darwin-arm64"
      sha256 "d65b6ec36ad002c3295b7d9c5a68fdd114f1783b3222bc18b32fd3ae916bacf7"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.23.0/imgpkg-darwin-amd64"
      sha256 "2440c4280771c8b7b75bbbe2fc87d35afd3221b9548a58822d25e1f96f564eac"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to https://github.com/vmware-tanzu/carvel-imgpkg"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.23.0/imgpkg-linux-amd64"
      sha256 "3152549d11eed64ac482dd9d31afb5c59552d61ee2bf78698472d858698abeb2"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
