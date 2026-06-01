class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.55.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.1/ytt-darwin-arm64"
      sha256 "cf4d4afcf32e5cab1ba55a74f436c7e4bd04326c168a11be17078162629100e9"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.1/ytt-darwin-amd64"
      sha256 "b6a946878b74883c093bcc3e93960c68a6058a7e2be6ee2c78f1ba5f80fe3c02"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.1/ytt-linux-arm64"
      sha256 "ce61f7aee3f66f9b78d5781ef8528b7c8e199a2747796ef17a954118d3e65724"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.55.1/ytt-linux-amd64"
      sha256 "3a2c925ed222f8db4956946d40279688edd6ceb3e919f03f919a8fc8b8532eda"
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

