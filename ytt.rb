class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://carvel.dev/ytt"
  version "v0.36.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.36.0/ytt-darwin-arm64"
      sha256 "c970b2c13d4059f0bee3bf3ceaa09bd0674a62c24550453d90b284d885a06b7b"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.36.0/ytt-darwin-amd64"
      sha256 "9662e3f8e30333726a03f7a5ae6231fbfb2cebb6c1aa3f545b253d7c695487e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.36.0/ytt-linux-arm64"
      sha256 "114544b3070fed72dfc6d40b59ca85e73ed2afddff61383133554af6ae37caee"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.36.0/ytt-linux-amd64"
      sha256 "d81ecf6c47209f6ac527e503a6fd85e999c3c2f8369e972794047bddc7e5fbe2"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
