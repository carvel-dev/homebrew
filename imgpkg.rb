class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.42.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.0/imgpkg-darwin-arm64"
      sha256 "3efc3081538273e924152c978911b0331b9b397cc72e587803c51b5f06f6636a"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.0/imgpkg-darwin-amd64"
      sha256 "bbe4c9a3eae83df55b267506a3e6b22d94a7b4ed642f94797779e2b0ba647373"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.0/imgpkg-linux-arm64"
      sha256 "fc7ad7465730297085e4c7deefc47e2e56713be957971935008460a9bc709a0a"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.42.0/imgpkg-linux-amd64"
      sha256 "0bb6235af28abafc3458e30fbbd49e040aaa2189c4c39212a3c7a5a57ea83754"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

