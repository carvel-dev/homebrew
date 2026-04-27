class Ytt < Formula
  desc "Ytt"
  homepage "https://carvel.dev/ytt/"
  version "v0.54.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.54.0/ytt-darwin-arm64"
      sha256 "b447fa763dac6cad0e2497cb382a778cc4d47171374cc1347ca2896f2e1c1ea6"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.54.0/ytt-darwin-amd64"
      sha256 "c4dad8e654e9890a745aa62f3cbf87e5a6ccd5302afdf64855e918e5cdea81ca"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/ytt/releases/download/v0.54.0/ytt-linux-arm64"
      sha256 "2ee1dee5c952a081896ac5b30853b6e59bd77b5fdd244bff2ea16a3172e8fb5a"
    else
      url "https://github.com/carvel-dev/ytt/releases/download/v0.54.0/ytt-linux-amd64"
      sha256 "6a1549260d7641585c4434c83ad237a66ec4fd4478edbd32e5e190ce1e755d20"
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

