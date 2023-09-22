class Kwt < Formula
  desc "Kubernetes Workstation Tools"
  homepage "https://github.com/carvel-dev/kwt"
  version "v0.0.6"

  if OS.mac?
    url "https://github.com/carvel-dev/kwt/releases/download/v0.0.6/kwt-darwin-amd64"
    sha256 "555d50d5bed601c2e91f7444b3f44fdc424d721d7da72955725a97f3860e2517"
  elsif OS.linux?
    url "https://github.com/carvel-dev/kwt/releases/download/v0.0.6/kwt-linux-amd64"
    sha256 "92a1f18be6a8dca15b7537f4cc666713b556630c20c9246b335931a9379196a0"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kwt"
  end

  test do
    system "#{bin}/kwt", "version"
  end
end
