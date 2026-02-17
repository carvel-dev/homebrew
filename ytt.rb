class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.53.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.1/ytt-darwin-arm64"
      sha256 "2eaafe06d5e22203da2b74819685f9fd06ddc0a5cd38afc458821824990c78c0"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.1/ytt-darwin-amd64"
      sha256 "764dadb577e680fa8fd09a28d281c570cb0e75accebb2ab0a328ab24b4032cfe"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.1/ytt-linux-arm64"
      sha256 "5e479410a478385f6209624765e21c9880c07c6528ce6ed5e3dcca1e8b4a5677"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.1/ytt-linux-amd64"
      sha256 "ecdc1439e52139335e42a23d1aa8941f575c52e70e58da709d2bad5038ecadae"
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

