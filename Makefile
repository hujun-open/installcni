.PHONY: build-img
build-img: 
	docker build . -t ${IMG}
	docker push ${IMG}
	docker buildx imagetools create --tag ${IMGNOTAG}:latest ${IMG}