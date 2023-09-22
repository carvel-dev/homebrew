class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.46.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.46.0/ytt-darwin-arm64"
      sha256 "0c025f1210875f185a867e6cb3fd4770627f13ce64d69b6092de713464395ddb"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.46.0/ytt-darwin-amd64"
      sha256 "a2ca42f8178ba2849076b580177c5c12769e17f01a61ab50b106367728004692"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.46.0/ytt-linux-arm64"
      sha256 "9552c863452622386b9e9fcab0eb0533b6e8c77bc3f5c753967d40232b2a1721"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.46.0/ytt-linux-amd64"
      sha256 "348cb34965b64c07fd5118e69efd9a4fae7e22f57db4e91e2d9903c1ad19f041"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
    
    chmod 0755, bin/"ytt"

    bash_output = Utils.safe_popen_read(bin/"ytt", "completion", "bash")
    (bash_completion/"ytt").write bash_output

    zsh_output = Utils.safe_popen_read(bin/"ytt", "completion", "zsh")
    (zsh_completion/"_ytt").write zsh_output

    fish_output = Utils.safe_popen_read(bin/"ytt", "completion", "fish")
    (fish_completion/"ytt.fish").write fish_output
    
  end

  test do
    system "#{bin}/ytt", "version"
  end
end

