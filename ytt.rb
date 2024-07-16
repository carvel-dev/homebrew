class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.50.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.50.0/ytt-darwin-arm64"
      sha256 "f3ce72031d34f0a3d909b1c971017bb3788bb786d3bb5cba1bf6d699255be643"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.50.0/ytt-darwin-amd64"
      sha256 "d79f0b4189403c4142f5c646989de0769a316896a6096dfd1719605d313e8d1e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.50.0/ytt-linux-arm64"
      sha256 "f38290c2666ddcf6feb4907f91033c4f41022b3fb84893c42d1f48948597b82a"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.50.0/ytt-linux-amd64"
      sha256 "61dec6e00131f990db853afc4b7531c318bd3af3ba18f2cfdbc0d5e83a45c445"
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

