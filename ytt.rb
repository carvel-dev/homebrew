class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.55.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.0/ytt-darwin-arm64"
      sha256 "76c2d8f958568ceabe927d32206d79b779bd8341450d99b78d028ae608d1348b"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.0/ytt-darwin-amd64"
      sha256 "6218426752505fffce393a18eb700e7ddb2ddcc1c8ad521d02101bdb9db2f7f6"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.0/ytt-linux-arm64"
      sha256 "14e0a83a793c04bd26b2a2328f6df169b38ddf24257a64ffde23038f4ecab0bf"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.0/ytt-linux-amd64"
      sha256 "013adf9ed2fbd392b9861e5ec34015dabfcfa2e82da9e8cc0ee1e5c6a7f9b64b"
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

