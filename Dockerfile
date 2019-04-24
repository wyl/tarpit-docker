FROM python:3.7



MAINTAINER Wang Yalong <wangyalong@formovie.cn>


ENV project_name=tarpit_env
ENV project_env=mypc

RUN pip3 install tarpit

RUN echo "export ${server_name}=${project_env}" >> /etc/profile

