## 準備 (for macOS)

```bash
# llvm と qemu
$ brew install llvm qemu

# Rust(stable)
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Rustのターゲット
$ rustup target add riscv64gc-unknown-none-elf
```

## 実行方法

```bash
$ cargo run
```

## My Environment

### OS/カーネル
```bash
# sw_vers            
ProductName:            macOS
ProductVersion:         14.5
BuildVersijon:           23F79

# sysctl -n machdep.cpu.brand_string
Apple M3 Pro

# uname -r                  
23.5.0
```

### Rust 
```bash
# rustc --version                             
rustc 1.79.0 (129f3b996 2024-06-10)

# cargo --version  
cargo 1.79.0 (ffa9cf99a 2024-06-03)

# rustup show active-toolchain
stable-aarch64-apple-darwin (default)
```

### QEMU
```bash
# qemu-system-riscv64 --version
QEMU emulator version 9.0.1
```

### LLVM
```bash
# llvm-config --version
18.1.7

# lldb --version       
lldb version 18.1.7

# clang --version
Homebrew clang version 18.1.7
Target: arm64-apple-darwin23.5.0
Thread model: posix
InstalledDir: /opt/homebrew/opt/llvm/bin
```

### VSCode拡張機能
```bash
rust-lang.rust-analyzer
```

