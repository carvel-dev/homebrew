class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.47.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.1/kbld-darwin-arm64"
      sha256 "826d0f290c5fe2deb041840c506db75126b526ab7c76d38ed3c200300761be1e"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.1/kbld-darwin-amd64"
      sha256 "ed2ebfdd86ca3972c4966dca73e731b21571a7d9a35dd68cc7bfd9149c946b9c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.1/kbld-linux-arm64"
      sha256 "4b649e508d8f5a0d29b15bacf4b70dd43055c284a122fa089524d216c85e9e62"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.1/kbld-linux-amd64"
      sha256 "0950151615895b6a699085ba216a321aec35e4808672277281b94fc58cc0686b"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

