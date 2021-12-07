class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.43.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.43.0/kapp-darwin-arm64"
      sha256 "212946c222cb39cc9a0bba74ed8a5ac073f194354464e1677090f3bc98e7f14f"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.43.0/kapp-darwin-amd64"
      sha256 "c5c7f34399293ccda62dc7b809535a8e2f2afb9901147429281c0f4884b13483"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.43.0/kapp-linux-arm64"
      sha256 "b28d1f6de79b03308806c5be5bfe121d578d10c35b530eb3f311f7c69e20d168"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.43.0/kapp-linux-amd64"
      sha256 "f8669039dfba001081c94576c898d10aba28ecceffcd98708e8f2c87c13109e4"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
