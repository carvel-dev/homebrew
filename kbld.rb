class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.38.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.38.0/kbld-darwin-arm64"
      sha256 "3d164cff500245e5c04057b3604288c9af6cab2e655e55b124a16088ef59e8bd"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.38.0/kbld-darwin-amd64"
      sha256 "472afeeb890589d2ea625e123bbf1cd142744523f29ebbc64c2dcb8bad2ca666"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.38.0/kbld-linux-arm64"
      sha256 "9d6d2897b83a60dd9538c8f589e177ba0594747bb3717127dc4671a876a8a363"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.38.0/kbld-linux-amd64"
      sha256 "c6ecf2d36b7a72f2bab57fae2a6e8a2a886c2b0072388a9f7dd07363fc0f13fc"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

