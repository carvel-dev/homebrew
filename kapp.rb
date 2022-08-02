class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.51.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.51.0/kapp-darwin-arm64"
      sha256 "be1eaec00d1a7e6ab24c86be80bf3e5713af9d14d93970ec34dd65ba6aaef3c1"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.51.0/kapp-darwin-amd64"
      sha256 "1da812a536d80f7b0aefb2155ac6903df2f92c9ec5c204d6b985a0c51a88041c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.51.0/kapp-linux-arm64"
      sha256 "368281fd8281bfc37d14704fd4482ec21cfabd63aeb66d07d520864057ceb599"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.51.0/kapp-linux-amd64"
      sha256 "58443df4200c683597f5c8a43ea8f5b7110bbcb1fbd8ca3f2061e9eff1a10e0e"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

