# My C++ Project

License: MIT ## 📌 Prerequisites
Ensure `clang-format` is installed:

- **Linux (Ubuntu/Debian)**: `sudo apt install clang-format`
- **MacOS (Homebrew)**: `brew install clang-format`
- **Windows (Chocolatey)**: `choco install llvm`

## 🛠 Usage

### **Generate `.clang-format`**
```sh
bash scripts/generate_clang_format.sh
```
Creates a `.clang-format` file with default formatting rules.

### **Format Code**
```sh
bash scripts/format.sh
```
Automatically applies formatting to all `.c`, `.cpp`, `.h`, and `.hpp` files.

## ❓ Troubleshooting
- **clang-format not found?** Ensure it’s installed (`clang-format --version`).
- **Scripts won’t run?** Try: `chmod +x scripts/*.sh`

🚀 **Happy coding!**
