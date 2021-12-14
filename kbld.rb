class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://carvel.dev/kbld/"
  version "v0.31.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.31.0/kbld-darwin-arm64"
      sha256 "7287efdd8ba1a58b0a6a3cf5c41a9c35ba12b8b30ac3e275f68c9640af857903"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.31.0/kbld-darwin-amd64"
      sha256 "d3b0a30bf3a79bedeb25d8548a91254954b99cd4a0c03f3a810b331fc4d1f071"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.31.0/kbld-linux-arm64"
      sha256 "7c69efa53994c29d2a090c153a65d8d7f10aa89fa7493668135a613875c910ce"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.31.0/kbld-linux-amd64"
      sha256 "ba0be56d9e74b067f3e659de0b79100b0b9df86a2e3e0e6ff533b1e019c22c23"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
