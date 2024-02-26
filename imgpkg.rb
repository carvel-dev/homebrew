class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.41.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.41.1/imgpkg-darwin-arm64"
      sha256 "004551cec931a3633c0bb380e113f9c700796deab240a514201c2ec6f0a6fc4e"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.41.1/imgpkg-darwin-amd64"
      sha256 "50d63ad2b4735858112a55e3a2baf9af8568e459e79537f7aa04baf60b291797"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.41.1/imgpkg-linux-arm64"
      sha256 "1fc1c933cc235ef13dedf701075b36fea9c5da425783bec18452ccfb5332cac9"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.41.1/imgpkg-linux-amd64"
      sha256 "e6291309be274d8137116bba06824af763e22110d48e9cc45aca0d3135420966"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

