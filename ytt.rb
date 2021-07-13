class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://carvel.dev/ytt"
  version "v0.35.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.1/ytt-darwin-arm64"
      sha256 "acc4e759fce0489a7d6fdb7521a6db05047c1073af4e6497dc18c860146593ad"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.1/ytt-darwin-amd64"
      sha256 "1f2b61d02f6d8184889719d5e0277a1ea82219f96873345157e81075ca59808e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.1/ytt-linux-arm64"
      sha256 "d7f7686600c617efa611acb5d3e0825f58a60088dd5956cc412f718ed2162e3f"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.1/ytt-linux-amd64"
      sha256 "0aa78f7b5f5a0a4c39bddfed915172880344270809c26b9844e9d0cbf6437030"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
