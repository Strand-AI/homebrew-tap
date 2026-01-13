class LambdaCli < Formula
  desc "CLI and MCP server for Lambda Labs cloud GPU instances"
  homepage "https://github.com/Strand-AI/lambda-cli"
  url "https://github.com/Strand-AI/lambda-cli/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "e6c060fed003342feeb5078cc3a29c6133af9b30aab12b06b35ffb5e6d0b187d"
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
