class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.11.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.11.0/imgpkg-darwin-amd64"
    sha256 "e5a3a4dafdc541489279335914f28d2bfa8a2b8de975b78f14b1fce2aee6b95f"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.11.0/imgpkg-linux-amd64"
    sha256 "266b877b423cf78bed0fca6e1c310480bee56e9b8f77d018248d80d9e2e83794"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
