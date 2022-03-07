class Vendir < Formula
  desc "Vendir"
  homepage "https://carvel.dev/vendir/"
  version "v0.25.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.25.0/vendir-darwin-arm64"
      sha256 "3e7f479979f9aec4a030e94850b2ff6afae91f03091c1f0b517885d33eb46734"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.25.0/vendir-darwin-amd64"
      sha256 "5a6087a63c43c1e89f4dace6243fa0b41bbf7acc77f90abc378c47ecf1d0f60c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.25.0/vendir-linux-arm64"
      sha256 "7a2abc19233c6edd51273fd9b63278e150f8f3fda8b013b8b749eb6e8c807300"
    else
      url "https://github.com/vmware-tanzu/carvel-vendir/releases/download/v0.25.0/vendir-linux-amd64"
      sha256 "dde5d89d7e108ca29bcc5614af76f5eec43af39cf84a64c851620da65788b577"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
    
  end

  test do
    system "#{bin}/vendir", "version"
  end
end

