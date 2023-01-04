FROM registry.access.redhat.com/ubi8/ubi-minimal:latest

# Set the working directory (to better tolerate all of the clis dotfiles)
ENV HOME=/tmp
WORKDIR $HOME

# Install microdnf packages: tar/gzip, curl, git, jq, htpasswd
RUN microdnf update -y && microdnf install -y tar curl git jq httpd-tools findutils unzip which make wget python3

# Clean up yum and dnf artifacts
RUN rm -rf /var/cache /var/log/dnf* /var/log/yum.*
