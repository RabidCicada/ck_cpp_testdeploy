#!/bin/bash

set -e  # Exit on error
set -o pipefail  # Fail if any command in a pipeline fails

# Define output file
CLANG_FORMAT_FILE=".clang-format"

# Generate .clang-format using a default style (LLVM, Google, Mozilla, Chromium, WebKit)
STYLE="llvm"

# Generate the reference .clang-format file
clang-format -style=$STYLE -dump-config > $CLANG_FORMAT_FILE

echo "Generated $CLANG_FORMAT_FILE using the $STYLE style."

# If you want to modify some default values, you can use sed or append to the file
echo "Updating default indentation settings..."
sed -i 's/IndentWidth: 2/IndentWidth: 4/' $CLANG_FORMAT_FILE
sed -i 's/UseTab: .*$/UseTab: Never/' $CLANG_FORMAT_FILE
echo "ColumnLimit: 100" >> $CLANG_FORMAT_FILE

echo "Reference .clang-format file created successfully."
