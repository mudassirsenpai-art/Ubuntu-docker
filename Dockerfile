# Ubuntu 22.04 base image choose karein
FROM ubuntu:22.04

# System packages aur web-terminal tool install karne ke liye
RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    tmux \
    screen \
    python3 \
    && curl -fsSL https://github.com -o /usr/local/bin/ttyd \
    && chmod +x /usr/local/bin/ttyd \
    && rm -rf /var/lib/apt/lists/*

# SnapDeploy ko batane ke liye ke is port par network open karein
EXPOSE 7681

# Web terminal launch karne aur automatic container loop ko background me chalane ka command
CMD ["sh", "-c", "ttyd -p 7681 bash & while true; do echo 'Ubuntu Container is Running 24/7...'; sleep 60; done"]
