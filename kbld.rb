class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.43.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.43.0/kbld-darwin-arm64"
      sha256 "0ef6dffa72656ff5e964306ab4833335be432e768916b9da12c08769dd1919c2"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.43.0/kbld-darwin-amd64"
      sha256 "cfdfc5198b746b564ec81486e5d8e6aa944a7c326adf502091dbd75e5f5b4898"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.43.0/kbld-linux-arm64"
      sha256 "562002e56ba13f6b148b2674b3ddd94b64dd53b73190fc1e84904232f5151627"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.43.0/kbld-linux-amd64"
      sha256 "119e7d11e66e512896ce42aba9cc7f783388da3cbb258b793e7419a3167af2a9"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

