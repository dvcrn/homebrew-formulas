class Wework < Formula
  desc "CLI for WeWork"
  homepage "https://github.com/dvcrn/wework-cli"
  url "https://github.com/dvcrn/wework-cli.git", tag: "1.0.0"
  version "1.0.0"

  head "https://github.com/dvcrn/wework-cli.git"

  bottle do
    rebuild 1
    sha256 cellar: :any_skip_relocation,
      arm64_sequoia: "0a7c16909a2095c22e88ca6deb5330822ff1e3900c34b51ac0e6b3b6790afaa9",
      arm64_sonoma: "34aa628ca667b72afd8367dc8e12d0ae74802cfcb0a85698dae1b1d326461c93"
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
