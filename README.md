# wylfocus/tarpit

更快的部署基于tarpit 环境下开发的服务

# 获取 image
docker pull wylfocus/tarpit

# 运行docker
docker run -p 10086:10086 -name tarpit-example tarpit


curl http://localhost:10086


# 使用wylfocus/tarpit 镜像快速部署 tarpit 服务
```Dockerfile

FROM wylfocus/tarpit

ARG ENV_NAME=yourproject_env
ARG PROJECT_NAME=yourproject

ENV PROJECT_NAME=${PROJECT_NAME:-yourproject}
ENV ROOT_DIR=/data/${PROJECT_NAME}

# VOLUME [ "/data" ]
COPY . /data/${PROJECT_NAME}/service

WORKDIR ${ROOT_DIR}

EXPOSE 10088:10088

```

docker build . -t your_project

docker run -p 10088:10088 your_project

curl http://localhost:10088





# Srouce code 

https://github.com/wyl/tarpit-docker

