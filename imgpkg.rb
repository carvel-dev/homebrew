class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.34.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.34.1/imgpkg-darwin-arm64"
      sha256 "77eea57ead85d7c8385bbe7cc01138a21a12807febe1491af7cbc4a4b96887d6"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.34.1/imgpkg-darwin-amd64"
      sha256 "5330dfdd76865cde0db1bd54562578dc39c2fa5a9fa6ef8e97d143b4a5754bcd"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.34.1/imgpkg-linux-arm64"
      sha256 "45b0932cbfc2fab1d6687b2ada72360b708cdeaa769fb2e85bac83db7fe8203b"
    else
      url "https://github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.34.1/imgpkg-linux-amd64"
      sha256 "de864d7c77cf1338f28c02828de7bfd3a34c0670692cb415ab0c34352c6e605b"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

