# Jenkins Docker image — CI/CD

This repository builds and publishes a Jenkins Docker image with some essential
plugins to work as a quick bootstrap for a lab Jenkins instance.

## Workflow

A workflow to publish the docker image is also included. Only tagged images will be actually published.

Example to publish:

```bash
# create a tag and push it to trigger a publish
git tag v1.0.0
git push origin v1.0.0
```

## Troubleshooting

- If the workflow fails to push, check that `DOCKER_USERNAME` and `DOCKER_PAT` are set and correct.
- Check Actions logs for the buildx output and registry responses.
