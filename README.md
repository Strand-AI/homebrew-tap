# Strand AI Homebrew Tap

Homebrew formulae for Strand AI tools.

## Installation

```bash
brew tap strand-ai/tap
```

## Available Formulae

### lambda-cli

CLI tool for Lambda Labs cloud GPU API.

```bash
brew install strand-ai/tap/lambda-cli
```

Or after tapping:

```bash
brew install lambda-cli
```

## Usage

After installation, set your Lambda Labs API key:

```bash
export LAMBDA_API_KEY=your_api_key
```

Then use the CLI:

```bash
lambda_cli list          # List available GPU instances
lambda_cli running       # List running instances
lambda_cli start --gpu gpu_1x_a10 --ssh my-key --name "my-instance"
lambda_cli stop --instance-id <id>
```

See [lambda-cli README](https://github.com/Strand-AI/lambda-cli) for full documentation.
