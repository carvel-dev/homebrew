class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.33.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.33.1/vendir-darwin-arm64"
      sha256 "35e37893eceb625a46c412651b2ca3818aea0fd994cc449fb976c741ccc1e9e9"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.33.1/vendir-darwin-amd64"
      sha256 "155b6ff8c251b53dfd7e9554ff657b5bf626659dc288012a124a8bdb9186851e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.33.1/vendir-linux-arm64"
      sha256 "79e026faaa1ac75c36414a97ee7e58b4bf9c148b1ce34aee795c667b71745519"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.33.1/vendir-linux-amd64"
      sha256 "6c9ed811fe9983e03424f2ecfc00a4aaeb19646ef27c42eb2a6c643ea07bd32b"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

