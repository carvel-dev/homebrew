class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.40.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.40.0/ytt-darwin-arm64"
      sha256 "3b3e3cb5d05afe97f53f7b8c93edba97821d4d03561056e9c3f2d69cc45b51f5"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.40.0/ytt-darwin-amd64"
      sha256 "912e7c7e64b685e9beb7f2afa5133df4cccdac29f7ee9d016cb10e7997ba5ed0"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.40.0/ytt-linux-arm64"
      sha256 "04ab81f008300ca386c037a3d1c8be5a63b040c5de16ad691cc9ce8b1f9dc364"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.40.0/ytt-linux-amd64"
      sha256 "1f3d6cc66dd86b3f47ae6a062fea380f5e7e498887698948130203181c276b42"
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

