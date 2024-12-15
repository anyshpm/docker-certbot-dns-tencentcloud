FROM certbot/certbot:v3.0.1

LABEL maintainer="Anyshpm Chen <anyshpm@anyshpm.com>" \
      description="Certbot with Tencent Cloud SDK"

# 优化 pip 安装并安装必要的包
RUN pip install --no-cache-dir tencentcloud-sdk-python && \
    rm -rf /root/.cache/pip/*
