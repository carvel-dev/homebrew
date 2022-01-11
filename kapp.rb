class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.44.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.44.0/kapp-darwin-arm64"
      sha256 "80998bdfb749710fb3aa53206bd89be867883cb6b135c572266c238ff0fa7e66"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.44.0/kapp-darwin-amd64"
      sha256 "27980ca316c2124fb2e983ff971c9afb12be818ac93d7d63c6b03ddb42d38f97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.44.0/kapp-linux-arm64"
      sha256 "2b55e6e32b1d76a90a9e446b359f8a778b0c1821dd7fabbe330c0c10a965bc46"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.44.0/kapp-linux-amd64"
      sha256 "aaa5162b857868e64a270641b79a2a980e4528d40e88ea7741440b3028637c7c"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
