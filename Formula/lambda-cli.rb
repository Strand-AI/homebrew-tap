class LambdaCli < Formula
  desc "CLI tool for Lambda Labs cloud GPU API"
  homepage "https://github.com/Strand-AI/lambda-cli"
  url "https://github.com/Strand-AI/lambda-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6e7d739e08939dd267cac82e3c3a3da1eab06d25bd0be7054f9e438e6a11cd7e"
  license "MIT"
  head "https://github.com/Strand-AI/lambda-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lambda 0.2.0", shell_output("#{bin}/lambda_cli --version")
  end
end
