class LambdaCli < Formula
  desc "Unofficial CLI and MCP server for Lambda cloud GPU instances"
  homepage "https://github.com/Strand-AI/lambda-cli"
  url "https://github.com/Strand-AI/lambda-cli/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "77a94d2f7bdaecd62f6f6585e5b792b1bd475d472d18e8b7967e1e2235e57d23"
  license "MIT"
  head "https://github.com/Strand-AI/lambda-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/lambda"
    bin.install "target/release/lambda-mcp"
  end

  test do
    assert_match "lambda", shell_output("#{bin}/lambda --version")
  end
end
