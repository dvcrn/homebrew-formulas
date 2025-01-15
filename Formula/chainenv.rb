class Chainenv < Formula
  desc "CLI for storing and retrieving secrets"

  homepage "https://github.com/dvcrn/chainenv"
  url "https://github.com/dvcrn/chainenv.git", tag: "1.0.0"
  version "1.0.0"

  head "https://github.com/dvcrn/chainenv.git"

  bottle do
    root_url "https://github.com/dvcrn/chainenv/releases/download/1.0.0"

    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "45c55fc84c857f263911fc0fed470d03ded5a406e9fd4f66093b9b84929ed279"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-trimpath", "-o", bin/"chainenv", "main.go"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chainenv --version")
    assert_match "Usage:", shell_output("#{bin}/chainenv --help")
  end
end
