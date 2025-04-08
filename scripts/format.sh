#!/bin/bash

set -e  # Exit on error
set -o pipefail  # Fail on first error in pipes

# Set default style or use a user-specified config
CLANG_FORMAT_STYLE="file"  # Uses .clang-format in repo

# Find all C/C++ source files and apply formatting
find . -regex '.*\.\(c\|cpp\|h\|hpp\)' -exec clang-format -i --style=$CLANG_FORMAT_STYLE {} +

echo "Code formatting complete."
