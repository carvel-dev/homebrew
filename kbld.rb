class Kbld < Formula
  desc "Kbld"
  homepage "https://carvel.dev/kbld/"
  version "v0.49.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.0/kbld-darwin-arm64"
      sha256 "fa66c519ce4dc44dc10e778def90d90efc556f1676610be1a71923394e13bba1"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.0/kbld-darwin-amd64"
      sha256 "c60055a764d6da6f18369d80d601483ee429dab2dd44501a87ebad60326c25c2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.0/kbld-linux-arm64"
      sha256 "5ac217660fa3418686c55d57fe1b8106d5102f95c87ac10396c927f822dc304c"
    else
      url "https://github.com/carvel-dev/kbld/releases/download/v0.49.0/kbld-linux-amd64"
      sha256 "f9ec8530fb677a37d9e9dd7c95fabaa2c857b2c46f21cdfdcec3a665a1236b6d"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
    
  end

  test do
    system "#{bin}/kbld", "version"
  end
end

