class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kctrl/"
  version "v0.34.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kctrl/releases/download/v0.34.0/kctrl-darwin-arm64"
      sha256 "8dda001a3ecbfddd105b2130d31a2f5f10cee91d6653433f369dff777218f4c2"
    else
      url "https://github.com/vmware-tanzu/carvel-kctrl/releases/download/v0.34.0/kctrl-darwin-amd64"
      sha256 "febd769d36d04df56ce9d16567ebb50ee69223129c1ae41cbde8580a24928dbc"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/carvel-kctrl/releases/download/v0.34.0/kctrl-linux-arm64"
      sha256 "b38c75bf0438bb159c5f473fb648dd27a0722fc12c7e0acd56a2866d83504ed9"
    else
      url "https://github.com/vmware-tanzu/carvel-kctrl/releases/download/v0.34.0/kctrl-linux-amd64"
      sha256 "c40252b1b94d86bd0284ca99bc9e7a68cb3a027bb5f6125efe39ae2281081568"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

