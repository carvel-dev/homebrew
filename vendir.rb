class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.35.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.35.0/vendir-darwin-arm64"
      sha256 "ad9903183608a17ec5e581743ee75e88ac190a34399787f7450d356965c9f2bc"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.35.0/vendir-darwin-amd64"
      sha256 "791e7d275088a1439460d108b8d92df16b2f45b4f3e576d5557dfd21b344f1a9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.35.0/vendir-linux-arm64"
      sha256 "a2810fef1123ee6eda307229f50b2e549b3ef14efb1ecdb2771405fdb0573f0c"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.35.0/vendir-linux-amd64"
      sha256 "d9109fb8f07bedab820b60e4789a2b183857073fa392cd603b9cabeac795ba04"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

