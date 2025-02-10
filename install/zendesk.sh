# Repos
ok directory $ZENDESK_CODE_DIR
cd $ZENDESK_CODE_DIR
ok github zendesk/skvader
ok github zendesk/zdi
ok github zendesk/zdi-images
ok github zendesk/agent-graph

## docker
ok cask homebrew/cask/docker

# Manual instructions for zdi binstub
echo "cd into your zdi directory and run the onboard script e.g. ./bin/onboard --docker-for-mac"

# Post zdi bootstrap
# DNS Resolution Check
# https://github.com/zendesk/zdi/blob/master/docs/docker_for_mac.md#dns-resolution-for-zd-devcom

# Connect to docker with console
# docker run -it --rm --privileged --pid=host alpine:edge nsenter -t 1 -m -u -n -i sh

# agent-graph
source ./zendesk-agent-graph.sh

# scooter
source ./zendesk-scooter.sh

# RIC
ok brew ric

# Terraform
ok brew terrraform

