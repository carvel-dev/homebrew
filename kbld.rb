class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.34.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.34.0/kbld-darwin-arm64"
      sha256 "2962cd78c6c45cf3f03ca76c52ca7517ed5f2ceba6ed1b3d594a16d516ef05a2"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.34.0/kbld-darwin-amd64"
      sha256 "5fd3afbe09a66fc9e91252c57448045eeeab1ee3f6d305da6f9885186b744e67"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.34.0/kbld-linux-arm64"
      sha256 "658725c5dab5349dd4cb826ff9278749f093ed2275aadf51dc994265e6599b2c"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.34.0/kbld-linux-amd64"
      sha256 "67c86ece94a3747b2e011a5b72044b69f2594ca807621b1e1e4c805f6abcaeef"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

