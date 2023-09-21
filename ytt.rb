class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.45.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.6/ytt-darwin-arm64"
      sha256 "cc527918325b4876b00eca8bda71d2e1e7f2cc83de530be328994b89f3586dc2"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.6/ytt-darwin-amd64"
      sha256 "2b32add6ceb66d0abf41663316810b2175c4df59286a6c0ca5b39582a689621f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.6/ytt-linux-arm64"
      sha256 "a4bfc0e27ccd5d2c72fade9cb1a446d8a6704774daca9dbd373c4f5cd0e7a204"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.6/ytt-linux-amd64"
      sha256 "4be1ecdcad3cd43066692944b13ca6f99f03043a1ca78a4c4590011400a61e32"
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

