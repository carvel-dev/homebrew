class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.42.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.42.0/ytt-darwin-arm64"
      sha256 "cacbd9f47db050734c9eb4ddebd349dd4e884e50731fd9fadabbdda45c9ce2a2"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.42.0/ytt-darwin-amd64"
      sha256 "c792f769e61bbd1322783c04603f443bf1f2a079a840d406ec2c91160534e49e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.42.0/ytt-linux-arm64"
      sha256 "f7cdcef8dc8e97f412a2d52b9d47da7cfa02612899d68c567a475d6985f56d9a"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.42.0/ytt-linux-amd64"
      sha256 "aa7074d08dc35e588ab0e014f53e98aec0cfed6c3babf8a953c4225007e49ae7"
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

