class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.45.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.4/ytt-darwin-arm64"
      sha256 "3e6f092bfe7a121d15126a0de6503797818c6b6745fbc97213f519d35fab08f9"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.4/ytt-darwin-amd64"
      sha256 "2b6d173dec1b6087e22690386474786fd9a2232c4479d8975cc98ae8160eea76"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.4/ytt-linux-arm64"
      sha256 "cbfc85f11ffd8e61d63accf799b8997caaebe46ee046290cc1c4d05ed1ab145b"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.4/ytt-linux-amd64"
      sha256 "9bf62175c7cc0b54f9731a5b87ee40250f0457b1fce1b0b36019c2f8d96db8f8"
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

