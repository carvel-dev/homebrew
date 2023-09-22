class Kwt < Formula
  desc "Kwt"
  homepage "https://carvel.dev/kwt/"
  version "v0.0.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kwt/releases/download/v0.0.7/kwt-darwin-arm64"
      sha256 "6e951943cbcf75aa7dfb29438f9297742398c47364c407df58db148a609217ff"
    else
      url "https://github.com/carvel-dev/kwt/releases/download/v0.0.7/kwt-darwin-amd64"
      sha256 "8d131cc796d8c2204be3d810c4abe6ec2fc502ad3df1583f64c5863dc50d957a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/kwt/releases/download/v0.0.7/kwt-linux-arm64"
      sha256 "eb0aac724879c0c3d7db012d7f5b4bb9de7d13262c5f9474dd5d094828b46a90"
    else
      url "https://github.com/carvel-dev/kwt/releases/download/v0.0.7/kwt-linux-amd64"
      sha256 "02368ab941d354f44399900ce0ff43054ebc8faa7c9fbf414d6a95f02f68aa92"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kwt"
    
  end

  test do
    system "#{bin}/kwt", "version"
  end
end

