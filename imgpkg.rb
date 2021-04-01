class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.6.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.6.0/imgpkg-darwin-amd64"
    sha256 "6346be7afa7258e9f32e1b7641c8b7c3e645ba0ff79b01a8a258229b517ae188"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.6.0/imgpkg-linux-amd64"
    sha256 "b0d29d28a28db5632ce48cd9ea414ae1d3c9da382c96c72abb9961587ffb657f"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
