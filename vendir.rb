class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.46.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.2/vendir-darwin-arm64"
      sha256 "dd77c509214e3a7114d30de4b9a94ba09cdcb84230244589db10448d8c744662"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.2/vendir-darwin-amd64"
      sha256 "92160571582d04e1da66a15e476d4f63b6ca894593c6b126b0d53bea8da0f58b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.2/vendir-linux-arm64"
      sha256 "bb0574c3aff6a5ae99801ceb3d63893917f763908700883bc1fbbcfed2ab6c9b"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.46.2/vendir-linux-amd64"
      sha256 "0b4bad28b765c4cbf0cc2234d0d420bcf2d352b58eb202e9c55263374f95bd71"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

