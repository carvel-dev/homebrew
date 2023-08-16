class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.37.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.5/kbld-darwin-arm64"
      sha256 "3810b2ee53001a17c4bc846842168372ad3d710ae043628ce9d3516f41d7ceee"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.5/kbld-darwin-amd64"
      sha256 "21f049cb8b2bfa303ac976848f58fb978d93a715451ff1daaaa520866a8c748e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.5/kbld-linux-arm64"
      sha256 "1d5a4f8782e98d9be71365032a1be488e09ebd6334cf46a4efafff277180d44f"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.5/kbld-linux-amd64"
      sha256 "90f9ef52e6e15e76f4b077f918d8ef26f3b6514229011fc35a83c890cd59dc38"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

