class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://carvel.dev/ytt"
  version "v0.34.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.34.0/ytt-darwin-arm64"
      sha256 "9be18b3c6f2d6d5c270e69e2c696250f064039b640ae5d76c80e1c3c2b3b680a"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.34.0/ytt-darwin-amd64"
      sha256 "a874395924e670f2c89160efeffc35b94a9bcf4e515e49935cb1ceb22be7f08a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.34.0/ytt-linux-arm64"
      sha256 "6a3011af3597d978896290de9e2bc9a6ed5154595abb79e758869f50b6c7f02a"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.34.0/ytt-linux-amd64"
      sha256 "49741ac5540fc64da8566f3d1c9538f4f0fec22c62b8ba83e5e3d8efb91ee170"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
