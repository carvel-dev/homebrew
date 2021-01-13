class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.3.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.3.0/imgpkg-darwin-amd64"
    sha256 "05bd8815c049b61fce0935a59149f0daca06ea62526b3961a33b3608fe90835e"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.3.0/imgpkg-linux-amd64"
    sha256 "7ebd513bdb4d448764725202f0bfe41e052a594eddeb55e53681ebdf4c27d4dc"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
