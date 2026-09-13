# Ubuntu 22.04 base image
FROM ubuntu:22.04

# Install system packages including ca-certificates
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    wget \
    tmux \
    screen \
    python3 \
    && curl -fsSL https://github.com -o /usr/local/bin/ttyd \
    && chmod +x /usr/local/bin/ttyd \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 7681

CMD ["sh", "-c", "ttyd -p 7681 bash & while true; do echo 'Ubuntu Container is Running 24/7...'; sleep 60; done"]
