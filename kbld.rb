class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.36.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.36.3/kbld-darwin-arm64"
      sha256 "b289118f72822f3cf78a5e8c062285b69c24d54127a94f8b2f375fb016c575df"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.36.3/kbld-darwin-amd64"
      sha256 "187a25bfdd4cddc9936e8f304ac54802896bd95b41d4939b8dbb92defbb46faa"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.36.3/kbld-linux-arm64"
      sha256 "c54c5a78fde0e2db92da8afaa3d2d5b7407d291106a8b8b32af6cbde1a5b3ebc"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.36.3/kbld-linux-amd64"
      sha256 "1d799fe491c87c18fa3b25473ee04acceea04d410cc8f806e8a6b06fa82abaee"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

