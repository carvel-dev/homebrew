class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.25.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.25.0/imgpkg-darwin-arm64"
      sha256 "6eacaabe3ee8cfe6f3e6b7f0ade63048254bca3a5d94a115feed60219bdd0f67"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.25.0/imgpkg-darwin-amd64"
      sha256 "c5c0b4e340001a98c361a2021c2cc7fd62bcaa64be7b85151ed9807459ab2f18"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      odie "linux/arm64 is not supported. If you would like support please raise an issue upstream to github.com/vmware-tanzu/carvel-imgpkg"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.25.0/imgpkg-linux-amd64"
      sha256 "14ce0b48a3a00352cdf0ef263aa98a9bcd90d5ea8634fdf6b88016e2a08f09d1"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

