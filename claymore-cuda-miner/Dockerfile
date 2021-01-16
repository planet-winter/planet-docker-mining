FROM nvidia/cuda:11.1-base
CMD nvidia-smi

ARG WALLET="0xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA" 
ARG INTENSITY=8
ARG PORT=3333
ARG TASK=""

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y libpci-dev

WORKDIR /

COPY app/ .

ENV WALLET=${WALLET}
ENV INTENSITY=${INTENSITY}
ENV PORT=${PORT}
ENV TASK=${TASK}

EXPOSE ${PORT}/tcp

ENTRYPOINT ["./start.sh"]
CMD ["${TASK}"]



