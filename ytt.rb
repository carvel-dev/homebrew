class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.45.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.0/ytt-darwin-arm64"
      sha256 "3262a49fd8b2e73d8bf5776d9afc16b64c5e0300a842f30acf4d1b6ec080e228"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.0/ytt-darwin-amd64"
      sha256 "c2781a30caf7f573dece6ec186ac0e97470d0de2eccf9fcf63f267c35495ac30"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.0/ytt-linux-arm64"
      sha256 "54e228823e851320b848d854218004299d2ff362e0fe9e287d5a52df502baaaf"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.0/ytt-linux-amd64"
      sha256 "d05f430ac18b3791d831f4cfd78371a7549f225dfaeb6fef2e5bfcd293d6c382"
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

