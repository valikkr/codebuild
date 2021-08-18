.web: build
build:
#	$(MAKE) docker-login
	docker build -t public.ecr.aws/q2m2k6m3/demo:latest -f ./Dockerfile .
	docker push public.ecr.aws/q2m2k6m3/demo:latest
