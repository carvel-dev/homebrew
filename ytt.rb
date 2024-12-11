class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.51.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.1/ytt-darwin-arm64"
      sha256 "1d6e054b9fb237ca18943b870a4c99b46503b79e6f8bc698be2b06cc414225b1"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.1/ytt-darwin-amd64"
      sha256 "833dda4d66e1d16d97dd8435140205587ddee6de25de3e1bf2d8766ad071e574"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.1/ytt-linux-arm64"
      sha256 "55849cab41cf7780b0d26da416395cf77576a434a4bcf883b0e2a29944325e7c"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.1/ytt-linux-amd64"
      sha256 "026a12ee7108ff2d1150eb1347d544367d92e993ade7b2d2727c4c8d13a47a6b"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
    
    chmod 0755, bin/"ytt"

    bash_output = Utils.safe_popen_read(bin/"ytt", "completion", "bash")
    (bash_completion/"ytt").write bash_output

    zsh_output = Utils.safe_popen_read(bin/"ytt", "completion", "zsh")
    (zsh_completion/"_ytt").write zsh_output

    fish_output = Utils.safe_popen_read(bin/"ytt", "completion", "fish")
    (fish_completion/"ytt.fish").write fish_output
    
  end

  test do
    system "#{bin}/ytt", "version"
  end
end

