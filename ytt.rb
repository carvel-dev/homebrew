class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://carvel.dev/ytt"
  version "v0.37.0"
  revision 1

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.37.0/ytt-darwin-arm64"
      sha256 "532bd5471cf791b9fef1401b036ac1d63a74540d5fdf28f0529b766546ce8f38"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.37.0/ytt-darwin-amd64"
      sha256 "5eef9da11dd4f714495e2cf47041fc6fd413c8c393af4cc5bf3869e075b4e936"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.37.0/ytt-linux-arm64"
      sha256 "ebf1970b3cf1ad34746f90727b85142fa9403049683da303c5622358376ae544"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.37.0/ytt-linux-amd64"
      sha256 "1aad12386f6bae1a78197acdc7ec9e60c441f82c4ca944df8d3c78625750fe59"
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
