class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.60.10"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.10/kctrl-darwin-arm64"
      sha256 "75ce9d3e49212062e9d9740e719d7b0235242cf7fdc1ea3c207b29f95de38e3f"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.10/kctrl-darwin-amd64"
      sha256 "fc2b9af6b517730a3e910f31481459017f341de67e6f736867a4e2ab3d3996ad"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.10/kctrl-linux-arm64"
      sha256 "aca7b5dda05d00027afcf1a0192772f52e68efc71c0392904968b0d4f398a39d"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.60.10/kctrl-linux-amd64"
      sha256 "f397167dbc4be71267e1f70aaf362ce69739c69aa237c010abb132b3630628a5"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

