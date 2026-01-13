class LambdaCli < Formula
  desc "CLI and MCP server for Lambda Labs cloud GPU instances"
  homepage "https://github.com/Strand-AI/lambda-cli"
  url "https://github.com/Strand-AI/lambda-cli/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "9cb14cde1b3d70efcac35a5f8ac2b1b27f440cba8881a0071aea78ca664f79cb"
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
