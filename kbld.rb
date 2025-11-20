class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.47.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.0/kbld-darwin-arm64"
      sha256 "81616056fa27db02e1b1d530f17ab1137aa6babbed1937f49df933d2e2fd1c33"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.0/kbld-darwin-amd64"
      sha256 "529cb544dae41e59f75f1d5fc292865ec22e191be590058272bda63a0eb57302"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.0/kbld-linux-arm64"
      sha256 "22d0ba350d8ae760dda1162893559c53065bdfb11648855ffcb7b53183a4e717"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.0/kbld-linux-amd64"
      sha256 "f9cf1d84ed8dd7c19133044e15939e62c9929ecf1115edeb7275f45b99e2d1ac"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

