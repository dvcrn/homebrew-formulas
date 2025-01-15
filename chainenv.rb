# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainenv < Formula
  desc ""
  homepage ""
  version "1.0.0"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/dvcrn/chainenv/releases/download/1.0.0/chainenv_Darwin_x86_64.tar.gz"
    sha256 "65346d2631502b6b2438b7d5895a8b40f00642fbcb60c42b2121ebfbcff55722"

    def install
      bin.install "chainenv"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/dvcrn/chainenv/releases/download/1.0.0/chainenv_Darwin_arm64.tar.gz"
    sha256 "8bf8b955e81413830f81119d6f50b23480758a2ebf663fa0d21fe2074ce948f3"

    def install
      bin.install "chainenv"
    end
  end
end
