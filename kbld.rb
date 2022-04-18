class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.33.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.33.0/kbld-darwin-arm64"
      sha256 "acbde20887239e383d23282ff7d4b017d248f28b7d2097043fed6b4387975723"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.33.0/kbld-darwin-amd64"
      sha256 "181ac8be5652b54344617d90aa8e83fbb41756d1b4b99168fec85d8813b3c1b2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.33.0/kbld-linux-arm64"
      sha256 "ac02649e0037ae957b3d18af1f1563fcf2672ea5aa8d8e9da88ea5de6b705897"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.33.0/kbld-linux-amd64"
      sha256 "38a5dad7ed478d209c8206d95546989b2730c7fed914c78d85eed68a2233688e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

