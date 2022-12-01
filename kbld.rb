class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.36.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.36.0/kbld-darwin-arm64"
      sha256 "74f1a9ce5b0804141185f68d24c7d55679cfb153ebf9862d06fe0fd83b6ef1c4"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.36.0/kbld-darwin-amd64"
      sha256 "8c8dd97986bc558b676ea3195566e293ae0ee19b31c57104d76adaf01592b4a2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.36.0/kbld-linux-arm64"
      sha256 "d7e182e1544a34fd3bc7dcd5c8bb347216a651ffc33e1130c08889d3adc01335"
    else
      url "https://github.com/vmware-tanzu/carvel-kbld/releases/download/v0.36.0/kbld-linux-amd64"
      sha256 "bbae1d86b627b1a78cf9d0e1b911377fa55f2dbc058b964cdada8382bf6432dd"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

