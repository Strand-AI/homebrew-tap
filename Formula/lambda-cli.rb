class LambdaCli < Formula
  desc "CLI tool for Lambda Labs cloud GPU API"
  homepage "https://github.com/Strand-AI/lambda-cli"
  license "MIT"
  head "https://github.com/Strand-AI/lambda-cli.git", branch: "main"

  # When releases are available, uncomment and update:
  # url "https://github.com/Strand-AI/lambda-cli/archive/refs/tags/v0.2.0.tar.gz"
  # sha256 "CHECKSUM_HERE"
  # version "0.2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lambda", shell_output("#{bin}/lambda_cli --version")
  end
end
