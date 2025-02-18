class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.55.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.55.1/kctrl-darwin-arm64"
      sha256 "5fe357c530cd850e3c8f63a60d29667d9b9e12ad8572324e38ef7d4af963ac1c"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.55.1/kctrl-darwin-amd64"
      sha256 "11a2bef71846a18d84975a2e0a4cc549223a166c24297248547879bab01b0fcc"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.55.1/kctrl-linux-arm64"
      sha256 "234bcab23f6d8349855bf1dfd27dd0d1617ff2188034be8c37e984026893d9e1"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.55.1/kctrl-linux-amd64"
      sha256 "39dd9593f3a7435ea2a9014dd832b5c9ed1eb1aba52e22c2b6186a0170c52f34"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

