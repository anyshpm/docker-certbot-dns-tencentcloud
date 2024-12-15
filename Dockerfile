FROM certbot/certbot:v3.0.1

LABEL maintainer="Anyshpm Chen <anyshpm@anyshpm.com>" \
      description="Certbot with Tencent Cloud SDK"

# 优化 pip 安装并安装必要的包
RUN pip install --no-cache-dir tencentcloud-sdk-python==3.0.1281 certbot-dns-tencentcloud==2.0.2 && \
    rm -rf /root/.cache/pip/*
