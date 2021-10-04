class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.41.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.41.0/kapp-darwin-arm64"
      sha256 "8ff71bc20b6a0c6f4f1c9b105f7d1cb29cfcbca99e29d6bb6569eb2e32cb8266"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.41.0/kapp-darwin-amd64"
      sha256 "928f1269b52bbb2c725a3ccccc0a63925a03d169d8d3341183e23d429530ef2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/k14s/kapp/releases/download/v0.41.0/kapp-linux-arm64"
      sha256 "81a8b064c2a1c94ce5e185d861384354251db9d5935ab7942280dc05cf0f452f"
    else
      url "https://github.com/k14s/kapp/releases/download/v0.41.0/kapp-linux-amd64"
      sha256 "ce4c38a6c6c7785d32afbc31ba316a6b89c068903d356a2ef8f54101b4073953"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
