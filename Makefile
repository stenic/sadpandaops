version?=dev

buildpush:
	docker build -t nousefreak/sadpandaops:${version} .
	docker push nousefreak/sadpandaops:${version}
