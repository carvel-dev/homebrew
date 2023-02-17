class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.36.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.0/imgpkg-darwin-arm64"
      sha256 "9650c344cba3fd0d6ea94522c2077a1d5024fbe3e6116005228a3cf71abc9e11"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.0/imgpkg-darwin-amd64"
      sha256 "76a9290361e7f445da3c1adc51660507775e24b431e6140095c645bdf7fa2f7a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.0/imgpkg-linux-arm64"
      sha256 "1011b7508d0ba447069fec827a2ace7cdac1be4d21475c5891db0be04aeeb1f3"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.0/imgpkg-linux-amd64"
      sha256 "db5b3f7d8f87790b6df3a4c0fda4ad58e74b8ccf1a3cd6c3c113bf142597190c"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

