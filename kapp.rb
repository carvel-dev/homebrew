class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.49.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.49.0/kapp-darwin-arm64"
      sha256 "6c1b6a9a487d881abcd4596ccd31ff7a4e127f2f33c112709844f7a3fb8a030f"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.49.0/kapp-darwin-amd64"
      sha256 "51e209f903b17c9e330151c41c6d507bfabccfdaa56dd8fdaa1c0f39ed2240e9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.49.0/kapp-linux-arm64"
      sha256 "e2047147c4bc00d8fcf9a5f01bdefc9fdf0aa5de9582357f03e54d4cd9fc0d75"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.49.0/kapp-linux-amd64"
      sha256 "dec5040d90478fdf0af3c1548d46f9ded642f156245bba83fe99171c8461e4f7"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

