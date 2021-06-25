class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://carvel.dev/vendir"
  version "v0.20.0"

  on_macos do
    url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.20.0/vendir-darwin-amd64"
    sha256 "85d8b1416c4e0fb5c3c01ce7e9d36297844fb4553683db4054eabcccfe220d7e"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.20.0/vendir-linux-arm64"
      sha256 "e5c56877bd5f2f291239b4c75c1eb8a8a682ba643981f797c195d89c372b15b4"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.20.0/vendir-linux-amd64"
      sha256 "45290b749e42478103f6887f223628581095089fd23a88bc3c1a812bfeaf6a76"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
