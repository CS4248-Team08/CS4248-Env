# FROM continuumio/miniconda3:latest
# SHELL ["/bin/bash", "-c"]
# ENV PYTHONDONTWRITEBYTECODE=1
# ENV PYTHONUNBUFFERED=1
# ENV WORKDIR=/workdir
# COPY ./environment.yml $WORKDIR/environment.yml
# WORKDIR $WORKDIR
# RUN . /root/.bashrc && conda init bash && conda env create -f environment.yml && conda activate cs4248-env

FROM python:3.7-slim-buster
WORKDIR /workdir
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
