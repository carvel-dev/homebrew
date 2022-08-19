class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.31.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.31.0/imgpkg-darwin-arm64"
      sha256 "b177782d667a51a2f816da9f41a99bf51f1d87e24e7bd29f1372e875992f6df8"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.31.0/imgpkg-darwin-amd64"
      sha256 "bf839a539c90a22287904e2a83c4322bf00da3150d8d47cb9fb5eb59dfe41111"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.31.0/imgpkg-linux-arm64"
      sha256 "c5d7b4a39250778f1dd5f9763d3854003c44bb9622d3ac72f58b41aa92d55f7a"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.31.0/imgpkg-linux-amd64"
      sha256 "e8a9a3d37a125eca49b8c074ee2f5c84616e765f20ee6c6d60f79dae8f19af10"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

