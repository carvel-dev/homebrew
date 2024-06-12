class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.49.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.49.1/ytt-darwin-arm64"
      sha256 "cba34f36d2b34108cc616a9455e8970ff10937470555af2dd09720ead9b29f64"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.49.1/ytt-darwin-amd64"
      sha256 "10bb753984bed1f351fb767810fdccb5def531ad77b27093f71698a44ab45965"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.49.1/ytt-linux-arm64"
      sha256 "7a8d04ac91578239d32683eea7c5bb045e6e3f0df6a8c3bb42927a161b7da4db"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.49.1/ytt-linux-amd64"
      sha256 "20a2f7466157a9c6189e885d0027e17c48776e65627f30fe04bffeef1d6f6166"
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

