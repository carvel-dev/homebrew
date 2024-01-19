class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://carvel.dev/imgpkg/"
  version "v0.40.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.40.0/imgpkg-darwin-arm64"
      sha256 "76eaefd8bebb5acd2477c554cc9f77a7353f2f2d0395cbdbd025b3fdf3c31b8c"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.40.0/imgpkg-darwin-amd64"
      sha256 "d143a5719ac645ec4921bc14a184505454955a815f2e6a215de8e5aa5179c2c9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.40.0/imgpkg-linux-arm64"
      sha256 "670b98c5c5b24ae20101b3ab2c430bf2340a9d47b21257b08c8ead20b207e615"
    else
      url "https://github.com/carvel-dev/imgpkg/releases/download/v0.40.0/imgpkg-linux-amd64"
      sha256 "de2ea4c292833736f9627c26ab43191f923aa96ae0c66dc95c546be42e0f90c5"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
    
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end

