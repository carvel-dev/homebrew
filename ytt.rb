class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.53.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.0/ytt-darwin-arm64"
      sha256 "403dcbd6fef85bf40a086348f25c0ae3a817ad761755df4fe8cf5276dad18995"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.0/ytt-darwin-amd64"
      sha256 "37fb4c7528e025582bc74a0692dded61f85e9192ddf4263fdebdeb8c7cd82660"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.0/ytt-linux-arm64"
      sha256 "f4922e95801bc2b9b4baf553d4650b9300670e2821e20690026f1bfd78cf8cd5"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.53.0/ytt-linux-amd64"
      sha256 "2e4986f44f3908a0a220b645587eab4d0ec70ff4a6818ca26d3a44e29e25f13c"
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

