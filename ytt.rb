class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.44.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.44.0/ytt-darwin-arm64"
      sha256 "30ba799b1ba4843e08c801d50aa01fac8bcfc497687157c675ab6a9712251885"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.44.0/ytt-darwin-amd64"
      sha256 "a50a8065c6d80226aa979bb708992ca4da9dd2ec2df2c6c4d5c6e9b4b9f3e6f8"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.44.0/ytt-linux-arm64"
      sha256 "4d36b859c01d9899e87a65e5533cb37ab62b17ee8120dd0454b417608130e431"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.44.0/ytt-linux-amd64"
      sha256 "b3fbce9c6828c7eea09491c24fe49ddba7afe09e4405db33373d2776c91b1e6c"
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

