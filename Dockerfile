FROM alpine

RUN apk add --no-cache git curl openssh bash

WORKDIR /opt

ARG KUBECTL_VERSION=v1.22.2
RUN curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl" \
	&& chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl

ARG HELM_VERSION=v3.7.0
RUN curl -LO "https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz" \
	&& tar -zxvf helm-${HELM_VERSION}-linux-amd64.tar.gz \
	&& chmod +x linux-amd64/helm \
	&& mv linux-amd64/helm /usr/local/bin/helm \
	&& rm -rf helm-${HELM_VERSION}-linux-amd64.tar.gz linux-amd64

ADD ./entrypoint.sh /opt/entrypoint.sh
CMD [ "/opt/entrypoint.sh" ]
