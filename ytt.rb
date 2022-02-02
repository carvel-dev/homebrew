class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.39.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.39.0/ytt-darwin-arm64"
      sha256 "723224d36471a9bcf160e2754554ba109cff2015ea01b87a9177826a839b7425"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.39.0/ytt-darwin-amd64"
      sha256 "b188f6a6f0c44ef8d3cf07d5237dcfa79d04b8c2823d697b58de7236034fb03a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.39.0/ytt-linux-arm64"
      sha256 "64e2bfd870d5b5249f3f261bc9224dbe870877f35cd3040c2ec46c3aaca94d43"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.39.0/ytt-linux-amd64"
      sha256 "7a472b8c62bfec5c12586bb39065beda42c6fe43cf24271275e4dbc0a04acb8b"
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

