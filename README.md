## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine.

### 📦 Prerequisites (Dependencies)

You need to install the **Build Tools** and the **Emulator**. Use the following commands based on your OS:

#### On Ubuntu/Debian:
```bash
sudo apt update
sudo apt install nasm qemu-system-x86 mak

🛠️ Step-by-Step Setup
1. Clone the Repository
First, you need to Clone the project to your local environment

```bash
git clone [https://github.com/Nebez-Berzency/my-first-bootloader.git](https://github.com/Nebez-Berzency/my-first-bootloader.git)

```bash
cd my-first-bootloader

2. Assemble the Source Code
In this step, we use NASM to compile the assembly code into a Raw Binary file. Run the following command:

```bash
nasm -f bin src/boot.asm -o bin/boot.bin
Note: This creates the boot.bin artifact in the bin/ directory.

3. Run in Emulator (Manual Execution)
Now, you can manually boot your binary file using the QEMU Emulator:

```bash
qemu-system-x86_64 -drive format=raw,file=bin/boot.bin

## 📜 License

Copyright (c) 2026 Nebez Berzency

This project is licensed under the **MIT License**. It is free to use, modify, and distribute for educational purposes. 

> "Keep coding, keep building."
