class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.44.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.44.0/imgpkg-darwin-arm64"
      sha256 "afa82893d76cd390be622a32d5e33f10f483437e963060e59e22c8f5da3090d2"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.44.0/imgpkg-darwin-amd64"
      sha256 "036870d2489abec4b7d4fd4fdde7bc88d3945d55743d0a9282f3a47dc78eac53"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.44.0/imgpkg-linux-arm64"
      sha256 "f772b6eb10654f45d15d2166d5be81cf18529aece59df906c25dcb364f508ebe"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.44.0/imgpkg-linux-amd64"
      sha256 "15ca4f8ec4c7a1c6ecf06740a942149887a73845565f0ffbf6ccbf013b65a58a"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

