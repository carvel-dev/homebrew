class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.46.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.0/kctrl-darwin-arm64"
      sha256 "806007f2a6bbe53d8ed7c671127cf97b4f9b5227914a54c05390a868abf63456"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.0/kctrl-darwin-amd64"
      sha256 "90ae7bb16e17ef07a5d32685b3548b1a085694472c330db35d31bd0f3814e1c7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.0/kctrl-linux-arm64"
      sha256 "4750a198343996887b9d6adf21efd5c6058188a1d62699a2b4329cc7e0f358c1"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.46.0/kctrl-linux-amd64"
      sha256 "5df737b605482578d54ef15cd8f6daf5850828adb2a73d3b8893169834273ee6"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

