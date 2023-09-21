class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.37.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.7/kbld-darwin-arm64"
      sha256 "337eb5413b38bc6d2390e71074bab37fa41a7a944a5ca246e698e8483d8ec932"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.7/kbld-darwin-amd64"
      sha256 "bcbe9c242811ff8abc7e60565dde848a9f438eab5714c034f173e382198a4f02"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.7/kbld-linux-arm64"
      sha256 "23020d32770ea88084f614e978597e41a3256b4766d91e9d796ae038f529b7fa"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.7/kbld-linux-amd64"
      sha256 "0aada0a2b8b0546c6c8cf4cb4713df34f18a88db2ba22615e1eeb9db8cabfbd1"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

