# Run with Docker

## 构建镜像 Build

```
docker build -t gopusher .
```

## 配置 Configuration

> Edit `.env`

```
# ws | wss
SOCKET_PROTOCOL=ws
SOCKET_PORT=8900
# SOCKET_CERT_FILE=
# SOCKET_KEY_FILE=

#GATEWAY_API_ADDRESS=192.168.3.92:8901
GATEWAY_API_ADDRESS=192.168.3.92:8901
GATEWAY_API_TOKEN=token

NOTIFICATION_URL=http://sdk.demo.com
NOTIFICATION_USER_AGENT="Gopusher 1.0"
```

* Run Gateway

```
docker run --rm -it -v $(pwd)/.env:/data/.env -p 8900:8900 -p 8901:8901 gopusher -c /data/.env
```

