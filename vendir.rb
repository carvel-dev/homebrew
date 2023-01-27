class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.32.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.32.4/vendir-darwin-arm64"
      sha256 "9caab6d8a3d7cec501b171cf6e546b0c5659bb17eaf02f7fba8ecbf72b153ab5"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.32.4/vendir-darwin-amd64"
      sha256 "37a347de20a2f3d13b3d7f09378b9c487e03d27cab49233eb0586f7d3a974fef"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.32.4/vendir-linux-arm64"
      sha256 "ed209b7d3830f2a785b1a86807213441594f9c9d1d2ef2c52bfbb5d85a9ef569"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.32.4/vendir-linux-amd64"
      sha256 "b656312997c81dd734a3e83403b0647ceae3446366dc5f179a23f39fee1d79e7"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

