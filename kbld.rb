class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.36.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.36.4/kbld-darwin-arm64"
      sha256 "7f28afd21c4f7c228ec4031c83dd8170bb1a33b34ba064d025e8460ceb866c75"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.36.4/kbld-darwin-amd64"
      sha256 "f0cdc652e4c8d56ec9f6f61030e353699e57faa2a0aedd1e786d44eb738f8ac1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.36.4/kbld-linux-arm64"
      sha256 "4d3842e2199006a0326c43247392f39a9d82c23c77e6bc3015f4db72483a18de"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.36.4/kbld-linux-amd64"
      sha256 "6a933fa76aa581b6c92c810c4c35877fad68187e2e9320b86876e00ec6852185"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

