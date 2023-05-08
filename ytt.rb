class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.45.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.1/ytt-darwin-arm64"
      sha256 "0f151a7191ade2269fd67932e35547c75b89948a96a0f33615765041993b55a2"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.1/ytt-darwin-amd64"
      sha256 "1c9a0167b4d0d92e112fc817273c7e168f8c8b0ef9a4040bd7695add1d0c7df6"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.1/ytt-linux-arm64"
      sha256 "e5112e7c69c4e664d245a5482fad95f07b49b04c77c7b2c86f1eab86d294817a"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.1/ytt-linux-amd64"
      sha256 "01606d885cdbce02340faadc29a83b5415280bc610e7cff3f639385d8f504aea"
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

