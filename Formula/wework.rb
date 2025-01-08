class Wework < Formula
  desc "CLI for WeWork"
  homepage "https://github.com/dvcrn/wework-cli"
  url "https://github.com/dvcrn/wework-cli.git", tag: "1.0.0"
  version "1.0.0"

  head "https://github.com/dvcrn/wework-cli.git"

  bottle do
    rebuild 1
      sha256 cellar: :any_skip_relocation,
      arm64_sequoia: "6886eece2e633c8605f0aad865007d4e0a2377090015dfd0e56f812c4bf3b4b9",
      arm64_sonoma: "34aa628ca667b72afd8367dc8e12d0ae74802cfcb0a85698dae1b1d326461c93",
      root_url: "https://github.com/dvcrn/wework-cli/releases/download/1.0.0"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-trimpath", "-o", bin/"wework", "cmd/wework/main.go"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wework --version")
    assert_match "Usage:", shell_output("#{bin}/wework --help")
  end
end
