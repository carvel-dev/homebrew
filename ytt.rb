class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.45.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.2/ytt-darwin-arm64"
      sha256 "dd1cf5f1b57a206b740cbe3f855daa840c07df69c87d859b575a34a26a4aa19e"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.2/ytt-darwin-amd64"
      sha256 "2cf05b68d3b8aa508a8c1b1739364ee585b08338a03aa93fe6807c08871ba289"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.2/ytt-linux-arm64"
      sha256 "11c357a59cee76dc06a0ad8e4ad081fd0fe0b9923ca7458967692de98cca43c7"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.2/ytt-linux-amd64"
      sha256 "c909d88845ce55430a91a1cf9db5e3f14ffa8ce53d6ecb42e7ff3acf56a2037f"
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

