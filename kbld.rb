class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.47.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.3/kbld-darwin-arm64"
      sha256 "c856f5ccfbc362e96bf3fcffc2e2070f74aef067479981a40aeffd4924506702"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.3/kbld-darwin-amd64"
      sha256 "224eae07777ac6180a9911fa5be1d1e5fb2f1d053faa39b55c8e79092bde3795"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.3/kbld-linux-arm64"
      sha256 "e985d62a8539ca2386c0e3db0e2c357adf55a4fdd0fa0e4ad7ab48a852c11ab1"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.47.3/kbld-linux-amd64"
      sha256 "26be68f9ec354a2753f102707f4389e28111d36c2a318b72cd1bcff719fabb6c"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

