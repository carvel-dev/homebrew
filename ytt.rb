class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.41.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.41.0/ytt-darwin-arm64"
      sha256 "270d76a9a67fc6c375f52beb538533c2228f2553ce96b0cb50fe366d00d7e291"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.41.0/ytt-darwin-amd64"
      sha256 "e35e24b12d9c99309758682392ae159f113b93a226fd9f567980c0c186f7caad"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.41.0/ytt-linux-arm64"
      sha256 "a0848c9965ad01ae2f169f100fca855e4b0a2c53f195bf54f5d28db5f95b5694"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.41.0/ytt-linux-amd64"
      sha256 "5027def0ee7c08c3426dac2c19974fb736e16fddb2ea4ed2456940a2c4266491"
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

