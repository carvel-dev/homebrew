class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.37.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.0/kbld-darwin-arm64"
      sha256 "64ae75c7e5b254c75a81de8ef1c8f179461ac12e2a1492e1c3a1d00e7f9f07a8"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.0/kbld-darwin-amd64"
      sha256 "721085d7b50323dddd92f79ea4cebbadc3d5318add886e5e02f77d8e13df6786"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.0/kbld-linux-arm64"
      sha256 "0ffa023c69355ca43ae131be065963e30d576963a066e903c7691fb54a79d08c"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.37.0/kbld-linux-amd64"
      sha256 "9f387e18043c95c922efbf879fc1d4d616b20c1c47aeae4f834c6f0069906735"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

