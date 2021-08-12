# PowerCLI Core
We publish this docker image on docker hub tagging a new version with `latest` and `<semantic version>` tags

We use the PowerCLI version for the docker images to recognize what is the installed PowerCLI version on the docker image.

To create and publish a new version, do:
1. Update Dockerfile if needed with a merge request.
2. Push a git tag on the master branch with name `v<Major>.<Minor>.<Build>`
3. The github action named `Dockerhub Push` will take care to build and push the new docker image with both `latest` and `<Major>.<Minor>.<Build>` tags
