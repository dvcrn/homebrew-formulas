class Chainenv < Formula
  desc "CLI for storing and retrieving secrets"

  homepage "https://github.com/dvcrn/chainenv"
  url "https://github.com/dvcrn/chainenv.git", tag: "1.0.0"
  version "1.0.0"

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
