class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.47.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.47.0/kapp-darwin-arm64"
      sha256 "e0c1962884ad153d055786b523827c09d3c05a3faa07c0b186acd40bdb7d46aa"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.47.0/kapp-darwin-amd64"
      sha256 "ed0a7a86828517e7aa3d4bede659ac725806b0201692f2d574beb71785220406"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.47.0/kapp-linux-arm64"
      sha256 "8808e0cbe06028581b8ed48e0a8426b7fd9dc26d17e24f9ab96522774892839a"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.47.0/kapp-linux-amd64"
      sha256 "2b1bd5e3a35ed63045be80a7cc8cbc054fe4e98c89c55f9006c8fec2243658a4"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

