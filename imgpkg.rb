class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.38.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.38.0/imgpkg-darwin-arm64"
      sha256 "9678b49af36d48d11dcbfd262f4deb1ea7f6266dcd135c120fffa24c7002e288"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.38.0/imgpkg-darwin-amd64"
      sha256 "348d7172359eb51bd837990ab43a62665f25bb5e3ea2f7c36ca7cfb1da8994b8"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.38.0/imgpkg-linux-arm64"
      sha256 "975f013ac48007314a34aa2d575c09fb186db0918f446a5ef0905ec2730453ef"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.38.0/imgpkg-linux-amd64"
      sha256 "3f272fc7eacb129a989b8f686ea59455ab7e65423192803c15d6affb963f86a9"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

