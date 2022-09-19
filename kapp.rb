class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.53.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.53.0/kapp-darwin-arm64"
      sha256 "d5e9d0d6817a85bb3a2e247092f7153fa2a57209351fe575dbb6ecd3dfbd9ac0"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.53.0/kapp-darwin-amd64"
      sha256 "2b466b9f8bbc8719334cadf917769b27affc10c95c9ded3e76be283cfd3d4721"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.53.0/kapp-linux-arm64"
      sha256 "b4ec066f491c687218eca7e986bdedda6e2680d2bcc3ae1495eb34597aeb2bd1"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.53.0/kapp-linux-amd64"
      sha256 "c2c7381a152216c8600408b4dee26aee48390f1e23d8ef209af8d9eb1edd60fc"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

