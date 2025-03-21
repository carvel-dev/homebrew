class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.64.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.1/kapp-darwin-arm64"
      sha256 "ff7168c861b19e2e2b96a6ace3374bf83048b7ca25a34a64cfaab675bdcdc6dc"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.1/kapp-darwin-amd64"
      sha256 "9fe565fd99b0417cc75892454d72fcdcff3124ca42f6d36d01bf4cc13232179b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.1/kapp-linux-arm64"
      sha256 "a74f11266571fab611d6d371f8ebc275fd16d7545ec00a8d178f2ac33e72d17c"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.64.1/kapp-linux-amd64"
      sha256 "8b7cf929c1498a4ae91b880e77c8ba8b545afc14ee564cd50d749c9f611223ed"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

