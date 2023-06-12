class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.45.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.3/ytt-darwin-arm64"
      sha256 "61114a5d245e0ca1deb158f2646f754d90e30e44d3381f8ab2efa491a0541c99"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.3/ytt-darwin-amd64"
      sha256 "a21a6e45f92ae71eae95e771bb8da6e939593c6679d3da36c4ae2204afdcce5f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.3/ytt-linux-arm64"
      sha256 "b0068b729e6787d0e6093ceb5678f5882d1ea2d56d75895e91f2082f64e588c5"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.45.3/ytt-linux-amd64"
      sha256 "a6729fb8514f10ab58f9ed3b50cd90ef79bf16d1cb29173baa84e1af0bc5ad4f"
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

