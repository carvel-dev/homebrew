class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.54.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.54.2/kapp-darwin-arm64"
      sha256 "cd4f72ccb309efea115ac48678a89cbca31bc993cc6b06546b63a6a8c00f93d1"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.54.2/kapp-darwin-amd64"
      sha256 "7349b265b327c6fb29fcf866e311029d3a5f06c18cb29d96b511fa378b245474"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.54.2/kapp-linux-arm64"
      sha256 "0e81eeb34bda28108f58011184c04226c422a83fc8a2d575dd5b85d4f569977a"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.54.2/kapp-linux-amd64"
      sha256 "bb586f4ee94a8fdeea5b3fcb934b95b20bb0d502deab19e9a445a573b6a27071"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

