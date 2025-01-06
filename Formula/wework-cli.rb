class WeworkCli < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for WeWork"
  homepage "https://github.com/dvcrn/wework-cli"
  url "https://github.com/dvcrn/wework-cli.git", branch: "main"
  version "0.1.1"
  license "MIT"

  depends_on "python@3"
  depends_on "pipx"

  def install
    system "pipx", "install", "git+https://github.com/dvcrn/wework-cli.git"
  end

  test do
    system "wework", "--help"
  end
end
