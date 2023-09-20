class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.45.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.5/ytt-darwin-arm64"
      sha256 "01d2baa62be2ef8cff869139fb44acdde341d52f4201fc9c6c1fe878190bee58"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.5/ytt-darwin-amd64"
      sha256 "9817dd189776026fe6f58b0f5e22f8477a94645b6be739062fc632626b946c2b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.5/ytt-linux-arm64"
      sha256 "d6d149f7a0ed9070a97d70c909ec741a705f2f11a4dda2df6eff05262a7f218b"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.5/ytt-linux-amd64"
      sha256 "c98d4baf2174bb1b9deb406405b16bbdf5c0df6ef4e1ebe2f782d45b37dfd647"
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

