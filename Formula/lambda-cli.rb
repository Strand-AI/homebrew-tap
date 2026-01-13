class LambdaCli < Formula
  desc "CLI tool for Lambda Labs cloud GPU API"
  homepage "https://github.com/Strand-AI/lambda-cli"
  url "https://github.com/Strand-AI/lambda-cli/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "553eec2b5ef2e3cbb908654d9bc767463353dac1bb4c65de8df6b6c3a2758014"
  license "MIT"
  head "https://github.com/Strand-AI/lambda-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lambda 0.2.2", shell_output("#{bin}/lambda_cli --version")
  end
end
