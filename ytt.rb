class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.53.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.2/ytt-darwin-arm64"
      sha256 "4cc85a5e954d651d547cdef1e673742d995a38b0840273a5897e5318185b4e18"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.2/ytt-darwin-amd64"
      sha256 "cc51c3040b91bb0871967f9960cd9286bafd334ffd153a86914b883f3adad9ef"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.2/ytt-linux-arm64"
      sha256 "0e9e75b7a5f59161d2413e9d6163a1a13218f270daa1c525656195d1fcef28f6"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.2/ytt-linux-amd64"
      sha256 "18fe794d01c2539db39acb90994db0d8e51faa7892d0e749d74c29818017247a"
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

