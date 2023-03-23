class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.36.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.1/imgpkg-darwin-arm64"
      sha256 "13f0032423fddd88fe21767cb16e672148022c810647fa778289a5aa53133c79"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.1/imgpkg-darwin-amd64"
      sha256 "8f79a9fff70ff11086ae345681b5646b7fba02341542df4f78c9bb0383e843d5"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.1/imgpkg-linux-arm64"
      sha256 "9422215c35ab7ee7e6f53196679b6cd3c1c0873456082b00c72efdb7e263bc27"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.36.1/imgpkg-linux-amd64"
      sha256 "194655166ca74d898c1225b42c9257cd0cb71128da271f233b8f12ceda7c15cc"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

