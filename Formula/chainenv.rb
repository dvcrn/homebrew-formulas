class Chainenv < Formula
  desc "CLI for storing and retrieving secrets from Keychain and 1Password"

  homepage "https://github.com/dvcrn/chainenv"
  head "https://github.com/dvcrn/chainenv.git", branch: "main"
  license "GPLv3"

  version "1.1.0"
  url "https://github.com/dvcrn/chainenv/archive/refs/tags/1.1.0.tar.gz"
  sha256 "b0727c31696fd90401d653fc96e1a66f473ce244d5dd6b3b59a471e9ce2b5be8"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-trimpath", "-o", bin/"chainenv", "main.go"

    generate_completions_from_executable(bin/"chainenv", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chainenv --version")
    assert_match "Usage:", shell_output("#{bin}/chainenv --help")
  end
end
