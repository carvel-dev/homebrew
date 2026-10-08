class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.48.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.3/imgpkg-darwin-arm64"
      sha256 "26eb329bfb2d64033ced4a1c7cc8dadb5bf7176cdd57b29328a8c7047c4196e8"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.3/imgpkg-darwin-amd64"
      sha256 "17165d62316364a23eaf7f1f7fb44b0a976b53c18da986746c9deb2474c733e6"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.3/imgpkg-linux-arm64"
      sha256 "655609325d9497096546342a4683688fc2a87a2952542b5da8105838285ec079"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.3/imgpkg-linux-amd64"
      sha256 "d177073901136b1e07741c9c7e6afdbdf8b4bcf32017c1e5bc8d184c8383ec69"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

