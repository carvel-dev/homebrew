class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.51.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.2/ytt-darwin-arm64"
      sha256 "4fa87a81af4634099c3a1c7396d4d0f0b6fee9f4854b37a6a547d55bfca897c5"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.2/ytt-darwin-amd64"
      sha256 "a25dd1c8b74f276a6ef2b4c2d0b493f8aaf87839e90762aa3c444e0b7eec95c8"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.2/ytt-linux-arm64"
      sha256 "ae0bdc3aca64e71276f59679ea9253be5f88fc6880937ae1de3dd42a00492a8c"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.2/ytt-linux-amd64"
      sha256 "61ad01f1df9cc8344c786e93acb1f5707ded9e4b52e4ec55a0f6637f2af53bae"
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

