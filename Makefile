REPO_NAME = public.ecr.aws/q2m2k6m3/demo

.PHONY: help
build:
#	$(MAKE) docker-login
	docker build -t $(REPO_NAME) -f ./Dockerfile .
#	docker push $(REPO_NAME)	
	#	
#	docker tag demo:latest public.ecr.aws/q2m2k6m3/demo:latest
#	docker push public.ecr.aws/q2m2k6m3/demo:latest
# Docker publish
# Docker release - build, tag and push the container
release: build publish ## Make a release by building and publishing the `{version}` ans `latest` tagged containers to ECR


publish: repo-login publish-latest publish-version ## publish the `{version}` ans `latest` tagged containers to ECR

publish-latest: 
	tag-latest ## Publish the `latest` taged container to ECR
	@echo 'publish latest to $(REPO_NAME)'
	docker push $(REPO_NAME):latest
