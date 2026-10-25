class Imgsmith < Formula
  desc "Convert, resize, crop and thumbnail images from one static binary"
  homepage "https://github.com/marceanlabs/imgsmith"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.2/imgsmith-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "ab1248de63850903371736f28da3e36735207aee7ca89ef09eee88a3761cddd9"
    else
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.2/imgsmith-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "02c9758783b86fa1ff7e2f8e64f0b8f09d0c8fbd043ced15385d4f43347d233b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.2/imgsmith-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b1de043ed5b62bcac0978f586b896658c0617d4401222d7017be594328d0792"
    else
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.2/imgsmith-0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0df51c42fdb01782535dd12fb307fc27a8ecb40d425a2fd2ab91d01cc39ab460"
    end
  end

  def install
    bin.install "imgsmith"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imgsmith --version")
  end
end
