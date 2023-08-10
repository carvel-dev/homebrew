class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.37.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.3/imgpkg-darwin-arm64"
      sha256 "1c02cd9617ebdab94d4992453ea23ae92a2795341f917b42e79be0b1cc6ee838"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.3/imgpkg-darwin-amd64"
      sha256 "c4a5d84b38a90e924e743f48c3d526465f9eb3ee8fbbf5526414e816951aa819"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.3/imgpkg-linux-arm64"
      sha256 "951ca7156596b18dfdeada589df7356bbfbdecc57cd0d67fa34d73d2aa233b9d"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.37.3/imgpkg-linux-amd64"
      sha256 "1248f35565a67dd4505d42b324c527f2690d9986d2932fe717a4ffdb9271f9ff"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

