class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.48.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.48.0/ytt-darwin-arm64"
      sha256 "ba9024f335c78f9f63ac38375be19a794bb4500470636897721d188e4f854c70"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.48.0/ytt-darwin-amd64"
      sha256 "9ac24bf6f7f354182d9304f2abd888681e2c360a3d82664a6664a83b6cf5b324"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.48.0/ytt-linux-arm64"
      sha256 "156ba28cd605e126a2f7746a285a8298dd68f08d5e201a0b5a33ae6cc21b9c96"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.48.0/ytt-linux-amd64"
      sha256 "090dc914c87e5ba5861e37f885f12bac3b15559c183c30d4af2e63ccab03d5f9"
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

