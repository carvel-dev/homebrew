class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.44.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.44.3/ytt-darwin-arm64"
      sha256 "c8dbc767a7008c5097bfeefdfd2530bfc4a02bf10f5d0e522aed2e65baff5820"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.44.3/ytt-darwin-amd64"
      sha256 "fb9cc00c4b6285e04595c493df73da425a2d5f9a551630e52559dd9ee2d58252"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.44.3/ytt-linux-arm64"
      sha256 "91d9ce5f2c9f8d11a127b1676d3a9fcb1982ec9b89084751c8bd335acffdb0c4"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.44.3/ytt-linux-amd64"
      sha256 "c047bd7084beea2b4a585b13148d7c1084ee6c4aee8a68592fc8ed7d75ecebc5"
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

