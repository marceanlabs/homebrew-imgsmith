class Imgsmith < Formula
  desc "Convert, resize, crop and thumbnail images from one static binary"
  homepage "https://github.com/marceanlabs/imgsmith"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.4/imgsmith-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "f9caf8b515c8e58244e16d79e2780f22a8fba5271b6637a98c79b886dc3d5bef"
    else
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.4/imgsmith-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "8b18971a1696d380f75989c62fb2682bd9daa37265538c6a07871fc7ace747be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.4/imgsmith-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15202e7ebd418e600eafee9ca2dd25c5b8f30f5f99d50f53481bac785db98ffd"
    else
      url "https://github.com/marceanlabs/imgsmith/releases/download/v0.1.4/imgsmith-0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a2007b3c3d897a41ef6fe90a970c45a372fa68f454c469b2e26c96c37103667"
    end
  end

  def install
    bin.install "imgsmith"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imgsmith --version")
  end
end
