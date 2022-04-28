class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.27.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.27.0/vendir-darwin-arm64"
      sha256 "761acab4ef3f227564ee782f917657038c3e3652130a6052ad7f1d9a14103799"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.27.0/vendir-darwin-amd64"
      sha256 "c26547097d67f21e129a25557d9d36c7c0e109afe130adff63d3c83ce9459ecc"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.27.0/vendir-linux-arm64"
      sha256 "015977ae54d85bf2366d7affb0d582fecf79737f0eb80fa8a66de9f66e877b61"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.27.0/vendir-linux-amd64"
      sha256 "1aa12d070f2e91fcb0f4d138704c5061075b0821e6f943f5a39676d7a4709142"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

