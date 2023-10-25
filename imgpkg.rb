class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.38.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.38.1/imgpkg-darwin-arm64"
      sha256 "f1dfe98dbc33400ae8d525f032d745a5eb2eb19ab9e3d4580e06cfffdb3db293"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.38.1/imgpkg-darwin-amd64"
      sha256 "4115072c441d0cea881e96b3e0108246970eea398ca6df2329f363274f2318af"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.38.1/imgpkg-linux-arm64"
      sha256 "fb384e5f23428694cc55f0294a762d9d1c341239e838d0f0756309c78923bf55"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.38.1/imgpkg-linux-amd64"
      sha256 "136edef97a4ffe98c9a2e70549a053f409ec35cc59751e7a4b314e9db6d53074"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

