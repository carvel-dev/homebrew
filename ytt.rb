class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.51.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.0/ytt-darwin-arm64"
      sha256 "bc59563641e45044b742c06db1d9b7e41c2a50e5f9594cf1effc73ca09e1319e"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.0/ytt-darwin-amd64"
      sha256 "fa1badba07995154c3537502d453503e0994a49793d2f54e33ff9d0137de133c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.0/ytt-linux-arm64"
      sha256 "3285a6263faca35253e73b7da54ee281cf21c7923e98a78a87328b695de96731"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.51.0/ytt-linux-amd64"
      sha256 "f7ac37761607fefe06a4cc40840a3378a6e8365417d70d06f171cbc4d5469aca"
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

