class Wework < Formula
  desc "CLI for WeWork"

  homepage "https://github.com/dvcrn/wework-cli"
  url "https://github.com/dvcrn/wework-cli.git", tag: "1.0.0"

  version "1.0.0"


  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"wework", "cmd/wework/main.go"
  end

  test do
    system "#{bin}/wework", "--version"
  end
end
