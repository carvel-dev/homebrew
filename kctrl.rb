class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.49.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.49.0/kctrl-darwin-arm64"
      sha256 "20abefc939a7f61629e418ae252bd7e58f27fe3fe7774a78ef183b180502bb92"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.49.0/kctrl-darwin-amd64"
      sha256 "65087b674099497fb9decbe85f75f59d891f9f458c7009bdfbca57de98a87ef7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.49.0/kctrl-linux-arm64"
      sha256 "f513b6b58a75b45506c3a347f63118bd4abffab9c69975c32089c7756d5807a4"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.49.0/kctrl-linux-amd64"
      sha256 "ed47847850039cf5572af49420d0365b2cc68a3a731fbc5e8a23b13eb8ffb020"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

