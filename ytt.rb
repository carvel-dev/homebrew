class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.47.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.47.0/ytt-darwin-arm64"
      sha256 "aec0bf2b5ca7dc98dd04444135738d0a1add18fcc1294c258eb8f1061b3eb9ec"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.47.0/ytt-darwin-amd64"
      sha256 "700dbb362a73950d779cf298ba191de2a35394fa68bf19e74add5e7384b2875a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.47.0/ytt-linux-arm64"
      sha256 "f12dc884af6be46a56c4233cbe456e90d8082d4699c0412d4adfaaae68712f4d"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.47.0/ytt-linux-amd64"
      sha256 "de2dd0a659fd12b2d80e00fa2a4a9316db67e0372e79c3bf48586ea53201180e"
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

