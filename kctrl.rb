class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.59.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.1/kctrl-darwin-arm64"
      sha256 "0d32b880e37745d1fff2d92d2388054fb6c7aa96be0333f29c1c1e8db51458be"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.1/kctrl-darwin-amd64"
      sha256 "1c306be0cabd69b83efc4022ed9c57bd38c9abab4a9b3144def1796926f6def4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.1/kctrl-linux-arm64"
      sha256 "efd2d439701ccbb63738d584f14509a234f8df94ab34c4700de2e27ce78a7bbd"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.59.1/kctrl-linux-amd64"
      sha256 "3cf09ba4ea90e3b44de569ddacaeaa9b1cf930772dee67dbb2a4deefa3c187a8"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

