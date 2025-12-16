class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.52.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.52.2/ytt-darwin-arm64"
      sha256 "02e1db4bce02f72a48312efca36fd1feb0d356ce21029e42916a88b17577b877"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.52.2/ytt-darwin-amd64"
      sha256 "cde68e057a9a0a175eb7366bc8ab5f358f7ffb7ed736cfac8b37ef98444da918"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.52.2/ytt-linux-arm64"
      sha256 "3abce3c1233e328e1cc11161b85d5c162fae04425ac1bbf4d29e6ba54781ff91"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.52.2/ytt-linux-amd64"
      sha256 "76d5355a5135c59a1791f420f3094579f775cbf2a987328f920a05e1338f1e1f"
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

