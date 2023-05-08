class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.37.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.1/kbld-darwin-arm64"
      sha256 "374cb58033ba6b7b02bbec3594d4f30c306d016a01f0032791678e17c48dff14"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.1/kbld-darwin-amd64"
      sha256 "9e498c719bc3ae60e299e2be7b8f349d58c546d5346d20806564fa0782d07ba1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.1/kbld-linux-arm64"
      sha256 "fdc36ff10798d86b42c8e52314e4721bd032ea46530e7511d77ed6fca72c1d99"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.1/kbld-linux-amd64"
      sha256 "f32fb1251fcbb70d192542105044c5291c6e67fbca7fb467bf0d38d92b9bf204"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

