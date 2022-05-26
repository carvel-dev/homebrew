class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.48.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.48.0/kapp-darwin-arm64"
      sha256 "bd653b97c58f2bae29fcc655f09c4687f211672655a7985b10daa7a6637ee6a9"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.48.0/kapp-darwin-amd64"
      sha256 "20b57cbb2ba883ebb78809a71c42c0f26b7b0ca15610d7a37dab4d962cca6e54"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.48.0/kapp-linux-arm64"
      sha256 "261ff488527d8144daa00cbabc472c0fb9609f24c774b279efc4be33d387c4b8"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.48.0/kapp-linux-amd64"
      sha256 "1f5fa1cb1d90575d97d7f7f801070ebf4096f10a0b21b4bbd9521b183bad91c6"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

