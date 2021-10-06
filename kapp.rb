class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.42.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.42.0/kapp-darwin-arm64"
      sha256 "221578c8736018771e7271e89abeee042be0bd0f7ae32c898d67c362840de20b"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.42.0/kapp-darwin-amd64"
      sha256 "47102637b9cd541b4ad1d6074f77b7cec1b60c170a0eb5c92df89674207194e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.42.0/kapp-linux-arm64"
      sha256 "c5c129db52a7b67df5971549686429ba484096dd2ba7e1c4289e5feb853be0ab"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.42.0/kapp-linux-amd64"
      sha256 "5d5c4274a130f2fd5ad11ddd8fb3e0f647c8598ba25711360207fc6eab72f6be"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
