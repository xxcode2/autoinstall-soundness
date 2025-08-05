#!/bin/bash

# Update dan upgrade sistem
sudo apt update && sudo apt upgrade -y

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
echo 'source $HOME/.cargo/env' >> ~/.bashrc

# Install Soundness Layer
curl -sSL https://raw.githubusercontent.com/soundnesslabs/soundness-layer/main/soundnessup/install | bash
source ~/.bashrc

# Jalankan instalasi dan update Soundness
soundnessup install
soundnessup update

# Generate key dengan nama "my-key"
soundness-cli generate-key --name my-key

echo "✅ Instalasi selesai. Kunci 'my-key' telah dibuat."
