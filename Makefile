REPO_NAME = public.ecr.aws/q2m2k6m3/demo

.web: build
build:
#	$(MAKE) docker-login
	docker build -t $(REPO_NAME) -f ./Dockerfile .
#	docker push $(REPO_NAME)	
	#	
#	docker tag demo:latest public.ecr.aws/q2m2k6m3/demo:latest
#	docker push public.ecr.aws/q2m2k6m3/demo:latest
