class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.50.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.50.0/kapp-darwin-arm64"
      sha256 "00278e7ce36001d3df921aa22011d65b524da6a6cf8a22c1121197cb8d33046c"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.50.0/kapp-darwin-amd64"
      sha256 "5d424f735cdef6ced3f3256312a4dcc99de14a294a5c82cd98a8e470f8b36dee"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.50.0/kapp-linux-arm64"
      sha256 "bc2f7d973217cd8c7e801f861cfd1ecfe108ccb72cf388dc4af6bb374ef52b9f"
    else
      url "https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.50.0/kapp-linux-amd64"
      sha256 "a9bcebef169ba759ba24b341f42022edef5b234b8ba61116df2305b3c8c5f2fb"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

