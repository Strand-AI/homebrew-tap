class LambdaCli < Formula
  desc "CLI and MCP server for Lambda Labs cloud GPU instances"
  homepage "https://github.com/Strand-AI/lambda-cli"
  url "https://github.com/Strand-AI/lambda-cli/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "088373d18c5ab917cdf19f3261d787402e9df5752ce4348c1c3d1b741e73fcd8"
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
