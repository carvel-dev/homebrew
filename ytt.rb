class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.41.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.41.1/ytt-darwin-arm64"
      sha256 "6405e481eaac650e25f640a1be6190953d03f51981972b29aacc91e43b5c1498"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.41.1/ytt-darwin-amd64"
      sha256 "c370fab22081b17b780d4ec37fb664edb58fe6f28d635ad4beccbac7997586f9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.41.1/ytt-linux-arm64"
      sha256 "3eaa8fcb3526a2a305a4845196bbffe7e1b0f3ea57fcd90daad94c855139df86"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.41.1/ytt-linux-amd64"
      sha256 "65dbc4f3a4a2ed84296dd1b323e8e7bd77e488fa7540d12dd36cf7fb2fc77c03"
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

