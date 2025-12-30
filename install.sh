#!/bin/bash

# Install script for makemore - Neural network character-level language model

echo "Installing makemore"
echo "==================="

# Check if uv is installed
if ! command -v uv &> /dev/null; then
    echo "Error: uv is not installed. Please install uv first:"
    echo "  curl -LsSf https://astral.sh/uv/install.sh | sh"
    exit 1
fi

echo "uv found: $(uv --version)"

# Sync dependencies using uv
echo "Setting up Python environment with uv..."
uv sync

echo ""
echo "Installation complete!"
echo ""
echo "Usage:"
echo "  uv run jupyter notebook"
echo "  Then open makemore.ipynb in your browser"
echo "  or"
echo "  uv run python makemore.py -i names.txt -o names"
echo ""
