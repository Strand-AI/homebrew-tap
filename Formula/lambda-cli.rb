class LambdaCli < Formula
  desc "Unofficial CLI and MCP server for Lambda cloud GPU instances"
  homepage "https://github.com/Strand-AI/lambda-cli"
  url "https://github.com/Strand-AI/lambda-cli/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "879c56da99c43f03d9a68f6fb3104cef1bbf9d9feefc58d1d93835d78aea6c94"
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
