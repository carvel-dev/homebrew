class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.37.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.2/kbld-darwin-arm64"
      sha256 "faf24318b68b46c40b91fb41417def7ac4688ad4ac572287bb4cd5d7e243ff11"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.2/kbld-darwin-amd64"
      sha256 "f6e1fb3d109d3c3984afb545ef17d9f5d5695bd2e0b72212d512a662795012e2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.2/kbld-linux-arm64"
      sha256 "42b51deb1853f4a4d153b90558a917ee8ee0f9126ba87edbf96bb55041e91f3f"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.2/kbld-linux-amd64"
      sha256 "e212d112da6475d0a3176c9c106de0cf3414e2d3d0662ba6642c652f17a9389d"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

