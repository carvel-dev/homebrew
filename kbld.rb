class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.40.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.40.0/kbld-darwin-arm64"
      sha256 "a73991b5c50c0256a9e555253da062971a3d48210a7d037ee2b4ea29f578ae37"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.40.0/kbld-darwin-amd64"
      sha256 "5249f528eff521ecd6e675bd173f9dab82ea15763a650593331e979d98bab9ee"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.40.0/kbld-linux-arm64"
      sha256 "0ec70977f8477255ee494aa0008c63830472fa82ea039bdddc3d9742837afff4"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.40.0/kbld-linux-amd64"
      sha256 "854580b4df414e9890b555470fced82a018ec4f2f0aa1a0d6bf2eec37812622d"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

