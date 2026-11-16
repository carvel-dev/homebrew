class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.56.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.56.0/ytt-darwin-arm64"
      sha256 "8ef36098e7543e229de84edd773870ac24f0f73ac1d24aa372a165f53a63e59d"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.56.0/ytt-darwin-amd64"
      sha256 "3beab0170d8bb5ec9734a5e2d9ebce3e14f6ec61556a2a29bef867ced66b61dd"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.56.0/ytt-linux-arm64"
      sha256 "291f93782a09e18157ba43e17476c2644477fae0e81277452a25ff545f47fbb1"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.56.0/ytt-linux-amd64"
      sha256 "b6dd3ed8774c98e17f0e6d5d50486ab796b455d4068cc2dde761e78694303300"
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

