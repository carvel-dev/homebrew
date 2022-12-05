class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.36.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.36.1/kbld-darwin-arm64"
      sha256 "85c57f6fe14b7bb982d2b5b5691c08acd5b7036d24022954211e5a585c0f564f"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.36.1/kbld-darwin-amd64"
      sha256 "927b9ac10a0e561378a429f8a130805cef7e16202b08e513fea5c36bf171c574"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.36.1/kbld-linux-arm64"
      sha256 "b457413588f5911fd3dc04f1143fd683e322228090cb3024c0d58463ce6f0a4e"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.36.1/kbld-linux-amd64"
      sha256 "fa954cf4e288d61e671a2be93d41d08309951d705b1f02d4c90213aa5736add5"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

