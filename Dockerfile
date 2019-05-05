FROM python:3.7

MAINTAINER Wang Yalong <wangyalong@formovie.cn>

ARG PORT=10086
ARG PROJECT_NAME=web

ENV ENV_NAME=tarpit_env
ENV ENV_VALUE=mypc
ENV PROJECT_NAME=${PROJECT_NAME:-web}
ENV ROOT_DIR=/data/${PROJECT_NAME}

WORKDIR ${ROOT_DIR}

EXPOSE "${PORT}:${PORT}"

RUN echo "export ${ENV_NAME}=${ENV_VALUE}" >> /etc/profile

ADD init init

ADD requirements.txt requirements-base.txt

RUN pip3 install -i https://pypi.douban.com/simple -r requirements-base.txt

# HEALTHCHECK --interval=5s --timeout=3s CMD curl -fs http://127.0.0.1:${PORT}/ || exit 1

CMD "${ROOT_DIR}/init"

