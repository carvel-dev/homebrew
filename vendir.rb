class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://carvel.dev/vendir"
  version "v0.19.0"

  on_macos do
    url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.19.0/vendir-darwin-amd64"
    sha256 "81c11620d97ff05ab37036bb1761ef0faff403a3380ea87a1152ec36508e698d"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.19.0/vendir-linux-arm64"
      sha256 "5856c2b7701bb41eb02eb8cd23ddeab142d2571dc001bb05adffc469429b3831"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.19.0/vendir-linux-amd64"
      sha256 "7f4634715be0219c779a0620f4aabd79a178a733bf29ef87428e758391aef148"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
