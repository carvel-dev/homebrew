class Kapp < Formula
  desc "Kapp"
  homepage "https://carvel.dev/kapp/"
  version "v0.65.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.5/kapp-darwin-arm64"
      sha256 "7172d01b3fbbef469c7abe1dc0db009092634b967f06970677ddfa17566aaca9"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.5/kapp-darwin-amd64"
      sha256 "df079c7a5cec7f1ea62ebb230e07f597d67e9ea4231ada0c19186d7b7114b48a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.5/kapp-linux-arm64"
      sha256 "d9329cd6c8ca47387d065ef241c73da20152888d9184a55a0a4a3dc4b66962ed"
    else
      url "https://github.com/carvel-dev/kapp/releases/download/v0.65.5/kapp-linux-amd64"
      sha256 "96ef4d7da52628888542d741080c04fbdbdf313b8fbae9f63f3a35c53119461a"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
    
  end

  test do
    system "#{bin}/kapp", "version"
  end
end

