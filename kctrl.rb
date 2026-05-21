class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.0/kctrl-darwin-arm64"
      sha256 "6d329f1245a0ff7eb15b0836879e308f77449d04f7f898d1f857631cfe5dd82b"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.0/kctrl-darwin-amd64"
      sha256 "979e0fd406f443f091aad9f08998416487b3c847e722584942e77b45146035b0"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.0/kctrl-linux-arm64"
      sha256 "eaaaaba04d99eeb77aa7e48dff3d0b7458dc2f31a1019f55ebfc023d4bdf6cde"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.0/kctrl-linux-amd64"
      sha256 "1422b58ef55cf023e2c30f069b4963ab2041420009fdb3c933b556d68acc2252"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

