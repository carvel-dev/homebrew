class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.63.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.1/kapp-darwin-arm64"
      sha256 "2bdd36a64c1d40ac9666cf8fe64e89bd2064d31989f837a6c15ef4198a896799"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.1/kapp-darwin-amd64"
      sha256 "8ad9d09844fd0710537190e1743b8fbcbe02b05f8180151e3420908120731071"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.1/kapp-linux-arm64"
      sha256 "fecd32c9760da68791e591afffd53ce0a935471bf40d1e3fd941e602d7becb04"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.63.1/kapp-linux-amd64"
      sha256 "3eed107de438378b35e619b37791512984e870e7e647fea312226a0e6fc9cd43"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

