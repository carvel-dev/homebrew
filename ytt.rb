class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.52.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.52.0/ytt-darwin-arm64"
      sha256 "f77bcbcd71802fcb55cb0333ed7e640e6cc6e9164b757af01a6ac69f6b503b47"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.52.0/ytt-darwin-amd64"
      sha256 "924eb899bdbb4b3652d941c7662acc434a7a35c07537e7cf48a7645b960a7ab5"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.52.0/ytt-linux-arm64"
      sha256 "781f8950da84b2d2928b139eb38567584d9ddebc7e5a34fd97209ad61ae9cc65"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.52.0/ytt-linux-amd64"
      sha256 "4c222403a9a2d54d8bb0e0ca46f699ee4040a2bddd5ab3b6354efd2c85d3209f"
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

