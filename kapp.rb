class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.57.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.57.1/kapp-darwin-arm64"
      sha256 "72ecfe547946ea1cf84b664a49b97cb6eb2f8f8b465603f5bf1cb734db082729"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.57.1/kapp-darwin-amd64"
      sha256 "6b68a2fa7d1934ce00b1eaef2958f3eb43a07a579b8a3393f53e934bc14b87e3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.57.1/kapp-linux-arm64"
      sha256 "b5f74da5ce2b4842550226f5c1c52083077411932614916fa6272ef014f5a584"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.57.1/kapp-linux-amd64"
      sha256 "c7e261a7ff61ab240b5c15229c9ab54172bb719066295858e89e56a77656b1cc"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

