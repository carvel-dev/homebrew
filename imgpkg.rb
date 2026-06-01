class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.48.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.1/imgpkg-darwin-arm64"
      sha256 "00635d53892afe1c36d134f8e67650e767d74e754cc460b68797977044582d7f"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.1/imgpkg-darwin-amd64"
      sha256 "db80447d06804162ba141689e1ca50cbbb59bb6355c1017f0838320e775ee2c7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.1/imgpkg-linux-arm64"
      sha256 "ce7243af30411581474ab86051774626b34c5b95ff1d030b3ee979ebddaf795d"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.1/imgpkg-linux-amd64"
      sha256 "6c7a1a2e6555e7827c3c97580be87c84d06778d0650d308f7dc67613aec7c7c8"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

