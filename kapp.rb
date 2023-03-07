class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.55.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.55.0/kapp-darwin-arm64"
      sha256 "f059d708fc550c516d1f04ee4c82efd8bc346c480156c03a3445825c73d827a6"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.55.0/kapp-darwin-amd64"
      sha256 "dcbf6dd9b4cecfc6316391029a6e9a5f3863e6a1f7848eb5fb78bfdbdc06faf8"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.55.0/kapp-linux-arm64"
      sha256 "944fdfebfdf1026d318609cc706bad454196f0b1d76e557b56c829b0e6165a9f"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.55.0/kapp-linux-amd64"
      sha256 "9aaa735985efbe240af0ca1d80adf3b43be6cf4ec6620a053082e31bea25dae7"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

