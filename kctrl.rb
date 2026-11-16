class Kctrl < Formula
  desc "Kctrl"
  homepage "https://carvel.dev/kapp-controller/"
  version "v0.61.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.61.0/kctrl-darwin-arm64"
      sha256 "3d36711165909295630d6fe2a0bf6222eed95ebe661fbb651b4fab317e1e5000"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.61.0/kctrl-darwin-amd64"
      sha256 "57acd694e2342e17868a175e898eaad2ec06cadcd0a2c6872d36321eb73f4d5c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.61.0/kctrl-linux-arm64"
      sha256 "31f0eedb115b30222f9fd285a6352183be98815942445e26b9bb79df7cdca2f7"
    else
      url "https://github.com/carvel-dev/kapp-controller/releases/download/v0.61.0/kctrl-linux-amd64"
      sha256 "5ed3e71841c2806f0f1f46059a32eceed05318c09831ed79aabfbcf94f1d2624"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kctrl"
    
  end

  test do
    system "#{bin}/kctrl", "version"
  end
end

