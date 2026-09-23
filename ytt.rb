class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.55.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.3/ytt-darwin-arm64"
      sha256 "427bffa2b10e7f1bb5cbbe0dc9675fca56ad60f139683d0c6a5428524a4c47a1"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.3/ytt-darwin-amd64"
      sha256 "b46df4cde88f0104b4c634c52a184e477e897a0ae76b057e6f3e225218998c80"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.3/ytt-linux-arm64"
      sha256 "fed073d52b780a88ce506e68c44f33cedede2dad3d5f4fbe07a2833e45d996ed"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.3/ytt-linux-amd64"
      sha256 "15751b45a819edbf22b3d3eadb5fa9a5a2599128d921660a874bd39c47bb41e1"
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

