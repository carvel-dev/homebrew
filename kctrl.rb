class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.53.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.53.1/kctrl-darwin-arm64"
      sha256 "08b0e63e3f2948ae9ef108d1c0407ffe1c0c35eb635c0347bb0b17263b24e353"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.53.1/kctrl-darwin-amd64"
      sha256 "a04c9e50130c0822d5b940aca1d3031fd6d3e065c907d70cd7b33b91199ff521"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.53.1/kctrl-linux-arm64"
      sha256 "3536d4fce287e8979d1c93d44309cf86db88e720b416e38f9346ddc5dfd95b28"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.53.1/kctrl-linux-amd64"
      sha256 "008e8543a1389ab29a75470a6f602b569e28fa866f72ddb214df32d57e09ed1c"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

