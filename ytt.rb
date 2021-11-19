class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://carvel.dev/ytt"
  version "v0.38.0"
  revision 1

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.38.0/ytt-darwin-arm64"
      sha256 "029678ab1c95d42ec559dcde854fcd3f89669cf2af83ca3d24603d45e4036202"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.38.0/ytt-darwin-amd64"
      sha256 "1f84e26457a5efd2470df408072bf2f182c939414e4958f82e19e122d2ee120c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.38.0/ytt-linux-arm64"
      sha256 "c4939a3de0518b802a2c75bf61e837d2c2137289261433eaa101760cee793d04"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.38.0/ytt-linux-amd64"
      sha256 "2ca800c561464e0b252e5ee5cacff6aa53831e65e2fb9a09cf388d764013c40d"
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
