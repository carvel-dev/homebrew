class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.46.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.46.0/kapp-darwin-arm64"
      sha256 "5fd36b56a7d8e8f99214f2e8096bd7f293492e0ffba98cb14611150efa113f4f"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.46.0/kapp-darwin-amd64"
      sha256 "7a3e5235689a9cc6d0e85ba66db3f1e57ab65323d3111e0867771111d2b0c1a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.46.0/kapp-linux-arm64"
      sha256 "f40cf819f170ce50632bcb683098a05711d0a2a7110b72eb2754a7fc651eb2f3"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.46.0/kapp-linux-amd64"
      sha256 "130f648cd921761b61bb03d7a0f535d1eea26e0b5fc60e2839af73f4ea98e22f"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
