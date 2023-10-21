# Repos
ok directory $ZENDESK_CODE_DIR
cd $ZENDESK_CODE_DIR
ok github zendesk/skvader
ok github zendesk/zdi
ok github zendesk/zdi-images
ok github zendesk/agent-graph
ok github zendesk/generator-java

## docker
ok cask homebrew/cask/docker

## gcloud
ok cask google-cloud-sdk

gcloud_check () {
  if ! command -v gcloud; then
    echo "gcloud command not found installing from cask"
    brew install google-cloud-sdk
    gcloud_check
  else
    echo "gcloud installed and the command is accessible"
    echo "Don't forget to source the zsh completions in your .zshrc"
    gcloud components update
  fi
}

gcloud_check
gcloud components install docker-credential-gcr
gcloud auth configure-docker

# Smoke test docker pull
docker pull gcr.io/docker-images-180022/base/alpine:3.6

# zdi requires the following ruby install
rbenv install 2.6.6

# Manual instructions for zdi binstub
echo "cd into your zdi directory and run the onboard script e.g. ./bin/onboard --docker-for-mac"

# Post zdi bootstrap
## DNS Resolution Check
## https://github.com/zendesk/zdi/blob/master/docs/docker_for_mac.md#dns-resolution-for-zd-devcom

# Connect to docker with console
## docker run -it --rm --privileged --pid=host alpine:edge nsenter -t 1 -m -u -n -i sh

# agent-graph
source ./zendesk-agent-graph.sh

# scooter
source ./zendesk-scooter.sh

# RIC
ok brew ric

# Terraform
ok brew terrraform

