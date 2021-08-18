.web: build
build:
#	$(MAKE) docker-login
	docker build -t demo -f ./Dockerfile .
	docker tag demo:latest public.ecr.aws/q2m2k6m3/demo:latest
	docker push public.ecr.aws/q2m2k6m3/demo:latest
