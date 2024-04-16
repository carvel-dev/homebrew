class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.49.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.49.0/ytt-darwin-arm64"
      sha256 "0658db4af8263ca091ca31e4b599cb40c324b75934660a4c0ed98ad9b701f7e9"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.49.0/ytt-darwin-amd64"
      sha256 "71b5ea38bfc7a9748c35ce0735fd6f806dce46bd5c9039d527050c7682e62a70"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.49.0/ytt-linux-arm64"
      sha256 "a2d195b058884c0e36a918936076965b8efb426f7e00f6b7d7b99b82737c7299"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.49.0/ytt-linux-amd64"
      sha256 "357ec754446b1eda29dd529e088f617e85809726c686598ab03cfc1c79f43b56"
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

