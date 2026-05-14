class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.48.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.0/imgpkg-darwin-arm64"
      sha256 "a29b22c1992ede7d3274520c2efd4672c697ca5f5857d7c2a7af74cfb9c8c243"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.0/imgpkg-darwin-amd64"
      sha256 "11104d72e3bf1e20e932379606ffa3cdfd2bed48daacf7f118d5e0f9010609c7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.0/imgpkg-linux-arm64"
      sha256 "63719b10884f95b83b7dc0831257869dadfe02ea7c68b7c9fdcb35ba687d5cf5"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.0/imgpkg-linux-amd64"
      sha256 "c35814ecab145c28700e9cc86826ed08942f17162cb1fb796e075058b022488c"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

