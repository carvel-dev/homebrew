class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.33.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.33.0/imgpkg-darwin-arm64"
      sha256 "049cfcbb80f52ced7e320fafe68e7170e9b84ee7cef7bf1f21cd33c675475c76"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.33.0/imgpkg-darwin-amd64"
      sha256 "7e5a95b48f2f8f674f7f5d1d0207cda6c6813734fa5bb0ed7fa6f5522ae0b5bb"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.33.0/imgpkg-linux-arm64"
      sha256 "08c8eafd44a0a51c47a06d9f5146e8659b88878e6f053fb1a6cc7eeed7f8019f"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.33.0/imgpkg-linux-amd64"
      sha256 "10a8327490ca3dbfa3d00f90ae442838d364e4d7d158786e94aa1ff0438dab27"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

