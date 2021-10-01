version?=dev

buildpush:
	docker build -t nousefreak/sadpandaops:${version} .
	docker push nousefreak/sadpandaops:${version}

helm_docs:
	which readme-generator \
		|| npm install -g https://github.com/bitnami-labs/readme-generator-for-helm
	cd charts/sadpandaops \
		&& readme-generator -v values.yaml -r README.md