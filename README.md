# Jenkins Docker image — CI/CD

This repository implements a simple docker image for Jenkins for testing purposes.

It's a a handy way to practice writing Jenkins pipelines and testing without worrying about
basic plugin setup.

## TL;DR

To speed up, just run like this:

```sh
docker run -p 8150:8080 --env JAVA_OPTS="-Dhudson.Main.development=true 
       -Djenkins.install.runSetupWizard=false 
       -Dhudson.security.csrf.GlobalCrumbIssuerConfiguration.DISABLE_CSRF_PROTECTION=true" \
       taksan/jenkins:v1.0.0
```

Notice: this will run Jenkins without any security and is appropriate only for tests and educational
purposes.