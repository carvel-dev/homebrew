class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.65.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.2/kapp-darwin-arm64"
      sha256 "0285fd258404b902d3a27d17f7a4ce7a01936edef7a1b822632d13b407afb39d"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.2/kapp-darwin-amd64"
      sha256 "91bd0bcc041b9ce135d8f119dc8e404bce7f8f7aa1c3b10cb34ac25d88ca2d7f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.2/kapp-linux-arm64"
      sha256 "a877a004f8b703218883c3f7140bda216f53b9b9e5b29fecf5cec7d4ad6d85b0"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.2/kapp-linux-amd64"
      sha256 "38b0a6eb958210f5db2cf79ee4082adf7b6cf52de983b5364c56d03d898b6439"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

