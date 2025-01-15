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
    sha256 "bad90976202c7b6c2d3e3929b94d5ba9a4af23e7f3055df2df6198e5038e15ce"

    def install
      bin.install "chainenv"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/dvcrn/chainenv/releases/download/1.0.0/chainenv_Darwin_arm64.tar.gz"
    sha256 "edb0e92a0a5ec5c3cbfe1eab8a2270e879c7c2f5d679113f7d7fab36c59c27c6"

    def install
      bin.install "chainenv"
    end
  end
end
