class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.43.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.43.0/ytt-darwin-arm64"
      sha256 "bd8781e76e833c848ecc80580b3588b4ce8f38d8697802ec83c07aae7cf7a66f"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.43.0/ytt-darwin-amd64"
      sha256 "579012ac80cc0d55c3a6dde2dfc0ff5bf8a4f74c775295be99faf691cc18595e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.43.0/ytt-linux-arm64"
      sha256 "62b8b0698bb9a88d5cfb91ed2f42853dff4f6b4f59f61036df07ad38ca10267b"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.43.0/ytt-linux-amd64"
      sha256 "29e647beeacbcc2be5f2f481e405c73bcd6d7563bd229ff924a7997b6f2edd5f"
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

