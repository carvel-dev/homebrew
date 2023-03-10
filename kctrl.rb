class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.45.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.45.0/kctrl-darwin-arm64"
      sha256 "76be76c9c8b0036f24d5e1c13943d7daebf3d8a3aed9b19ad1e7bc0a39911336"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.45.0/kctrl-darwin-amd64"
      sha256 "eb83e4e4b5cf81aba0d48c53f9393dcbe97a382822f0b4678a07c5b3dcfe9aba"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.45.0/kctrl-linux-arm64"
      sha256 "434093ea3bc802b1ad37a5f96ffde3669eec0f57ffc4f1279cc3fa9d07106527"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.45.0/kctrl-linux-amd64"
      sha256 "1841b8684fcee57d4707094092bbc21a88f60293a9a77605fea9cfe10f1d95c7"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

