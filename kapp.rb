class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.65.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.4/kapp-darwin-arm64"
      sha256 "a7ecd6a2ac62fdce02bb40784f2701e2421539e4bae6c3cd58dc8e943170c666"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.4/kapp-darwin-amd64"
      sha256 "d2f6a45c09703f2aff01422cc130f00f702094757c17804ab18de4dda2249ada"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.4/kapp-linux-arm64"
      sha256 "e41693ac3d69e1143c7e5fe870712ca05ed810e1e0bc5b00f77ca22ba0f18ae1"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.4/kapp-linux-amd64"
      sha256 "bf7df0647d7645572d45185bb8bf6a40dd1e631ff4ee1522bc8ce56db53bd243"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

