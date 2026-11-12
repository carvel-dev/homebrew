class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.66.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.66.2/kapp-darwin-arm64"
      sha256 "80fedd817c6df60253ba73b1f3d15a87daba5d401113cd74b2332899036a5a93"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.66.2/kapp-darwin-amd64"
      sha256 "e93b89fbd1a15495725119bb4a0fd70b98efaa206532f9c8398ad4ad7a05c8aa"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.66.2/kapp-linux-arm64"
      sha256 "3c2fc725afee527a0e38b4da55e41bdddf608d27a1ee830c29ba566132366fcb"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.66.2/kapp-linux-amd64"
      sha256 "48122dc249e48f8c92e2b3613fb4672950aaef2570248655fbede4c4d57b08a3"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

