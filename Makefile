version?=dev
project=sadpandaops

build_push:
	docker buildx create --name ${project} --use || docker buildx use ${project}
	docker buildx build \
		--push \
		--platform linux/arm/v7,linux/arm64/v8,linux/amd64 \
		--tag stenicbv/sadpandaops:${version} .
	docker buildx rm ${project}

helm_docs:
	which readme-generator \
		|| npm install -g https://github.com/bitnami-labs/readme-generator-for-helm
	cd charts/sadpandaops \
		&& readme-generator -v values.yaml -r README.md
