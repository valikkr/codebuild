.web: build
build:
	docker build -t public.ecr.aws/q2m2k6m3/demo:latest -f ./Dockerfile .
	docker push public.ecr.aws/q2m2k6m3/demo:latest
