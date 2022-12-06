class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.54.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.54.1/kapp-darwin-arm64"
      sha256 "6e829b43e86123de91dd458a29521c91ef62d5a5aaadf11e6bf865c77bcac2df"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.54.1/kapp-darwin-amd64"
      sha256 "116a32c5974fcc08bfbec5e36b3a9145ed12457b10b0d842613add2f34c0ef03"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.54.1/kapp-linux-arm64"
      sha256 "197971e92b44a54ddeb28aa3549310382c1a109e408a485b6eb41d9d0b73dba3"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.54.1/kapp-linux-amd64"
      sha256 "436e30a34647b2d889010d08a9242b4d3954f4c84c9ca26dd30751934ecf9950"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

