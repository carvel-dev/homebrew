class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.45.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.0/kbld-darwin-arm64"
      sha256 "0e6c05081b98c512a6cec98cd69096d9d99186b3eb5717d48813e0bd3f3beb47"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.0/kbld-darwin-amd64"
      sha256 "7a15d842a954854e0c04ff86264b686e7c8da43a2321338b4408b9b4af44f7c8"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.0/kbld-linux-arm64"
      sha256 "9e52c553322fa21a8af10d47d76c66eb7a2f406fad92bb589458554cb4143121"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.45.0/kbld-linux-amd64"
      sha256 "e076af83ef05765e6bf825f2bf5ac31c365cc0d513b7317bd634f3b9c6b5ee5d"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

