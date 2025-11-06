FROM jenkins/jenkins:lts
# Copy the list file into the reference directory
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt

# Run the CLI tool using the file
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
