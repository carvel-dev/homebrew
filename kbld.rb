class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.32.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.32.0/kbld-darwin-arm64"
      sha256 "819c9ae56567583700b190f7dfdc5fe7620289f76480ba01c62b4c6ca7eda905"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.32.0/kbld-darwin-amd64"
      sha256 "5fc8a491327294717611974c6ab3da2bda3f3809ef3147c1e8472ac62af3ee18"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to https://github.com/vmware-tanzu/carvel-kbld"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.32.0/kbld-linux-amd64"
      sha256 "de546ac46599e981c20ad74cd2deedf2b0f52458885d00b46b759eddb917351a"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
