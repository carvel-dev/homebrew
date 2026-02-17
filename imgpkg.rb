class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.47.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.2/imgpkg-darwin-arm64"
      sha256 "39e0f1ebdb9c66ee3beac38216e6fe472c7061e5851b103155bcddb51e123065"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.2/imgpkg-darwin-amd64"
      sha256 "340fbd0b3a62d1db9150bab05b6718265e44f40b3fe813fd6b514cf5b8b8a0a2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.2/imgpkg-linux-arm64"
      sha256 "bcc4766eb2e457d8b1d28e74c2b0a2c2f7e958f43c65ab492dc72fcd5b1d4147"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.47.2/imgpkg-linux-amd64"
      sha256 "c8f0da1ee06a806a0480f874366d4dac1b35fffd64da6ff55e26ea01144e2f9c"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

