class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.64.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.2/kapp-darwin-arm64"
      sha256 "cc6477204a6327aa48dfb37384a69bd6e311f7fcfe4ee52281e3a953b4a96856"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.2/kapp-darwin-amd64"
      sha256 "7d996ba14aa7128efe96a4c4206609f251db0f7459b60f9cd51210a9e4b8354f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.2/kapp-linux-arm64"
      sha256 "bffda57ed0c83cd2a8cc6faaaf97b3aa71f000658258eeaae6b0a31531a0e03a"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.2/kapp-linux-amd64"
      sha256 "475ed4fc7ee538efceeb02972524a17cb580d9b3e59ab16c7a18de02427daedc"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

