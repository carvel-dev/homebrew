class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.40.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.40.1/ytt-darwin-arm64"
      sha256 "a478eb4a6a88a8e3de9dd2e97c1fb96ca7a65c74525f2e132e6a5b333803f7c8"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.40.1/ytt-darwin-amd64"
      sha256 "d46dba5e729e2fe36c369e96eaa2eb5354fb1bf7cf9184f9bfa829b8e5558b94"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.40.1/ytt-linux-arm64"
      sha256 "c5d2f033b375ee87414b51d16c324d7a441de2f256865b5c774c4d5aea30ef60"
    else
      url "https://github.com/vmware-tanzu/carvel-ytt/releases/download/v0.40.1/ytt-linux-amd64"
      sha256 "11222665c627b8f0a1443534a3dde3c9b3aac08b322d28e91f0e011e3aeb7df5"
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

