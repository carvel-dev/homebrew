class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://carvel.dev/ytt"
  version "v0.35.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.0/ytt-darwin-arm64"
      sha256 "3304f422c7192ea20790ae5ad8246d8310dbe1766901a73fe72b9a8ba32b982c"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.0/ytt-darwin-amd64"
      sha256 "425c5a66c6d1cb765fff11b670081dbe9c63679d25129e4f566f37242cef324d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.0/ytt-linux-arm64"
      sha256 "11ed09e6b842029f47cea376c7f0c54110f3a015ae41a2c8a505d448cb69019a"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.35.0/ytt-linux-amd64"
      sha256 "23718f9b92b952f53b8ee603981031e3d2a54d9ad2aaf933da692d8e07a33c90"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
