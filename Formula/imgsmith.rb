class Imgsmith < Formula
  desc "Convert, resize, crop and thumbnail images from one static binary"
  homepage "https://github.com/marceanlabs/imgsmith"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.3/imgsmith-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "e3a1541636b2d3903336adfaad02fad0dfd08b301728afc8b98d3673670dc6e8"
    else
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.3/imgsmith-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "1d8c59172f586503edaae2736e1eb59b45396d1331703c4a5de2bc54a917aaed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.3/imgsmith-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a0b64112df8537b2e13d1774b3860c20103397572e7f2f73d87bfd7d83e9f7c"
    else
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.3/imgsmith-0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ebff4e0c6ce38905cc35f1b060c66e0ba1f24cf6736018eb53adb0e4df0d2f6c"
    end
  end

  def install
    bin.install "imgsmith"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imgsmith --version")
  end
end
