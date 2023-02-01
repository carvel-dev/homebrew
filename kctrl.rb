class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.44.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.6/kctrl-darwin-arm64"
      sha256 "cc56b2d2cf3fdc379d5637693773a41f47f1d877967b6add2085edc2baa6492e"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.6/kctrl-darwin-amd64"
      sha256 "b41bef1c6eeca32030e0be055a47788eb9dafa646541dd5a52dac154c3942604"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.6/kctrl-linux-arm64"
      sha256 "20b0b9ad0ca77341327b66754b8ee6b62ded01aff48f3408ad4c60065b8ef37a"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.44.6/kctrl-linux-amd64"
      sha256 "053962a5e40210059256db2625bdc1e15e3d4617cee1c9d28dd7dfcc034b9a32"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

