class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.55.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.4/ytt-darwin-arm64"
      sha256 "be901497fde4c646ee57b4081a06fa58e7d56b6bce33b697ec574dd2aaf49f47"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.4/ytt-darwin-amd64"
      sha256 "93075698510350ce70d8d2708933fd19cc180e395d95a5d07a3f6e957d865c1e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.4/ytt-linux-arm64"
      sha256 "8b66e7f34fa6b3f3bfbc72ed9cff83c7300ab5d42f8e8b3dec7e70d9b1af8803"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.4/ytt-linux-amd64"
      sha256 "214138d930f5865d561b62f3acba79207afb02c1d87814eb2a2693ea8a33fb9d"
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

