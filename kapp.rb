class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.65.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.1/kapp-darwin-arm64"
      sha256 "05be91c13b02646ed31b053720cbe27b840b10c62fa7a565fbfe817ce45ed97f"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.1/kapp-darwin-amd64"
      sha256 "50f60126a3ab91b220ecf9f81b4da05a68231ad6fc5e944a1448bafab3d70774"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.1/kapp-linux-arm64"
      sha256 "1d92b138d8cf93ae627a3b9dbb1f31fc3d6d6298304f90fdbc122acf3b84c13a"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.1/kapp-linux-amd64"
      sha256 "057d7fe33dd6afeb452a888d37995f789b9de0778ce4908896e37d37c52e6ead"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

