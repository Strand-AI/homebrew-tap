class LambdaCli < Formula
  desc "CLI and MCP server for Lambda Labs cloud GPU instances"
  homepage "https://github.com/Strand-AI/lambda-cli"
  url "https://github.com/Strand-AI/lambda-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "b57e13e135afb47be641a1a59f212948a6fed8a143bfd17a176b25ad3d1a1a20"
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
