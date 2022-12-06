class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.44.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.44.1/ytt-darwin-arm64"
      sha256 "af305a4a1e71642324511a58d3afab20426a5e890dbb3ba4c49aa07a21225b80"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.44.1/ytt-darwin-amd64"
      sha256 "037f5a2a059dec221383f3477980fc747f95a00e23f2f2b42e323d9578ac59ee"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.44.1/ytt-linux-arm64"
      sha256 "2b29dfb97be4a7333ab1e911887c884b2d1de16ee75f16b697fdbfe9661f58be"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.44.1/ytt-linux-amd64"
      sha256 "9f2f151cf42a54cdfee5ee1a98b7255821c9c047498d4af788cec8c4cf520fb8"
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

