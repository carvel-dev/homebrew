class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.41.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.41.0/vendir-darwin-arm64"
      sha256 "f9df00c3d35cf9d15767ea9b18a668ee9627eebefe0b6d4e1e4b648d5c992ceb"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.41.0/vendir-darwin-amd64"
      sha256 "295714208c95c4a3602fc2308d098a7540a2b71fdc1e104f95b3816fa073852c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/vendir/releases/download/v0.41.0/vendir-linux-arm64"
      sha256 "f1456d6cbf11299eece2e87563caabe24309302c327c5e42a357ebeaba057a05"
    else
      url "https://github.com/carvel-dev/vendir/releases/download/v0.41.0/vendir-linux-amd64"
      sha256 "3b1094bf45a9ff5c2915a986f4d7cee8480c3cab31c060445f851c48f397ee31"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

