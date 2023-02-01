class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.54.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.54.3/kapp-darwin-arm64"
      sha256 "7f35093c7076c52c77baf494a224ca6e32aeb85601731e3b4cec58c4b7f3b59b"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.54.3/kapp-darwin-amd64"
      sha256 "d3bf8bc733ed781ca5371ee6de008cb7682731995f1a9fb7748d2b21a6e7a9ff"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.54.3/kapp-linux-arm64"
      sha256 "9b4c8c0d718a0655acfc37a7df04450a3caa6126facfe301cd479466e20f954f"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.54.3/kapp-linux-amd64"
      sha256 "6b53e0d866fb3cdcb781475c23973eab6c37959e53c22094bc81f998884d74ae"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

