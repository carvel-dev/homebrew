class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.64.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.0/kapp-darwin-arm64"
      sha256 "ee25c54f54d7035f0f74b85cd33cea6d81e8f172e0a70288d0b3e4335caff54e"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.0/kapp-darwin-amd64"
      sha256 "0daa557bf6b00f99c187219b7765dc758a16801f5db462b88479d55aaae9b008"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.0/kapp-linux-arm64"
      sha256 "fc7617107fa87480e6326c1cdf2c62708f455c9d96f8e9550fb5e848c296cc80"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.0/kapp-linux-amd64"
      sha256 "14207d33130e833d201f2cd6e3e87435fb8b9534298843ed3c00fe7cda5221df"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

