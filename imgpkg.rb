class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.48.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.2/imgpkg-darwin-arm64"
      sha256 "c14c6f21d543c69b2e5ed4f0153e5c2a1371ac39dcc44ee9fdcf1c3339ba77e7"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.2/imgpkg-darwin-amd64"
      sha256 "cc0b4267d2f9e07110996384cb23a0ecfe7ee8b71dbc683f338560d37d73953c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.2/imgpkg-linux-arm64"
      sha256 "3172f46b42f6f67c962583fb81987d7143aa37a6d0364123e9a0bad43373cbda"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.48.2/imgpkg-linux-amd64"
      sha256 "1974667592fc9100848c2ab9871fb1d61b06ac5ced1a1dd9772d9fa3a5a8c8c7"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

