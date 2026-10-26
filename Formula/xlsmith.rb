class Xlsmith < Formula
  desc "Read a spreadsheet and get the data out as CSV or JSON, without opening Excel"
  homepage "https://github.com/marceanlabs/xlsmith"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marceanlabs/xlsmith/releases/download/v0.1.0/xlsmith-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "94f4baaa6ab3205ae88906907811476750a2db631c322e394e8594d0d8f56f54"
    else
      url "https://github.com/marceanlabs/xlsmith/releases/download/v0.1.0/xlsmith-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "d6d8ddf28d84121049a7a473f00c546ded46ffd081219708d43aec8a02977348"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marceanlabs/xlsmith/releases/download/v0.1.0/xlsmith-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "068472902406bcb74a589df608089ece18b9dccadb21a51189d7ceed860c5d7d"
    else
      url "https://github.com/marceanlabs/xlsmith/releases/download/v0.1.0/xlsmith-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0657aeb04f4aabe472732a2406045a2766a6d221f2af72bf48b23466589a9991"
    end
  end

  def install
    bin.install "xlsmith"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xlsmith --version")
  end
end
