class Chainenv < Formula
  desc "CLI for storing and retrieving secrets"

  homepage "https://github.com/dvcrn/chainenv"
  VERSION = "1.1.0"

  url "https://github.com/dvcrn/chainenv.git", tag: VERSION
  version VERSION

  head "https://github.com/dvcrn/chainenv.git"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-trimpath", "-o", bin/"chainenv", "main.go"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chainenv --version")
    assert_match "Usage:", shell_output("#{bin}/chainenv --help")
  end
end
