FROM registry.redhat.io/ubi8/ubi-minimal:latest

# Install microdnf packages: tar/gzip, curl, git, jq, htpasswd
RUN microdnf update -y && microdnf install -y tar curl git jq httpd-tools findutils unzip which make wget python3
