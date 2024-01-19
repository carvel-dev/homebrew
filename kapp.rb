class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.60.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.60.0/kapp-darwin-arm64"
      sha256 "7fa5e9e9aff5c29eb170252ba56b598038e7e141c5c7afa60e81b872e96c8729"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.60.0/kapp-darwin-amd64"
      sha256 "8746b9b49c47f27b9b08f425f247a3ea0b847f5cb9a1b88e4cff6c036112c7d7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.60.0/kapp-linux-arm64"
      sha256 "9847fa6f7122451e14833d9aaa376692dfc9fe2895ceb3a7159616a8041b68f5"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.60.0/kapp-linux-amd64"
      sha256 "7cc17971634da69c80d7159199c2c514c38b479d28987e055ce2c173bfbd9306"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

