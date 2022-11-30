class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.32.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.32.2/kbld-darwin-arm64"
      sha256 "70f06e282c9a71ac4cb7c794dc536dc758ef7bec5e2ee02e1fabfcc6fd0c3876"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.32.2/kbld-darwin-amd64"
      sha256 "7a3e9ce44ef0ca14fa0c2967845938ff3ed9a8dbe6359c85cb0e3a25aa591e98"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.32.2/kbld-linux-arm64"
      sha256 "b41ab4f9cdc3748b0967584ec6c9048f44de3deb115006e954e7511aab48c8f4"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.32.2/kbld-linux-amd64"
      sha256 "90ea6a1e1588407d74f2e120247556e81e759bfb06397a801a018b4956a7bd33"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

