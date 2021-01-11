class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.31.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.31.0/ytt-darwin-amd64"
    sha256 "bf85381a12954793d5a18f252579cb1bc043aada2c34ac0974e2ab8cf03a1de3"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.31.0/ytt-linux-amd64"
    sha256 "32e7cdc38202b49fe673442bd22cb2b130e13f0f05ce724222a06522d7618395"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
