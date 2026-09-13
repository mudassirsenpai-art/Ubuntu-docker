# Ubuntu 22.04 base image choose karein
FROM ubuntu:22.04

# System packages update aur install karne ke liye (Sudo automatically default hota hai)
RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    tmux \
    screen \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# Container ko active rakhne aur exit hone se bachane ke liye infinite background loop
CMD ["sh", "-c", "while true; do echo 'Ubuntu Container is Running 24/7...'; sleep 60; done"]
