class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.39.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.39.0/kbld-darwin-arm64"
      sha256 "5088c312db268540dcb312b8530c53758e683a01f1bb3600365085ddc41a9710"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.39.0/kbld-darwin-amd64"
      sha256 "9f4b12722c79a1bc748ea882e47ff939272a45c477fed8ac7e206001aca0bfb1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.39.0/kbld-linux-arm64"
      sha256 "9da907c879102d7dc4205e073d6d32abf4ef1c719851e96498aae42ed691c342"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.39.0/kbld-linux-amd64"
      sha256 "cdbfdfc1e5da490eb59705bfbc30b3fd05c0485474aff15bec52352af46d5880"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

