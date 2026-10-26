class Pdfsurgeon < Formula
  desc "Take pages out of a PDF, put PDFs together, or split one into many, without breaking it"
  homepage "https://github.com/marceanlabs/pdfsurgeon"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marceanlabs/pdfsurgeon/releases/download/v0.11.1/pdfsurgeon-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "d7e65119d7be0f0f228b9bf44acd67f148462aed8dddfc784d92719d067c790d"
    else
      url "https://github.com/marceanlabs/pdfsurgeon/releases/download/v0.11.1/pdfsurgeon-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "e1547145a65f2006b696b67c38a513033def2fd8a656a1e82d524f75f6cdb76d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marceanlabs/pdfsurgeon/releases/download/v0.11.1/pdfsurgeon-v0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "294bd2f3c4f348bfe38f2ac8c27ee8da22666d732824abc4e2fc8cd222c4c7cf"
    else
      url "https://github.com/marceanlabs/pdfsurgeon/releases/download/v0.11.1/pdfsurgeon-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd63f93894f030ab4a2b26dadc976c4b1a4797e4d98e2cb0900b4baa880d5527"
    end
  end

  def install
    bin.install "pdfsurgeon"
    doc.install "LICENSE", "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdfsurgeon --version")
  end
end
