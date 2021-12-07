zendesk_work_directory=$(find ~ -name zendesk | head -n 1)
echo "Setting envirnment variable ZENDESK_CODE_DIR to ${zendesk_work_directory}"
export ZENDESK_CODE_DIR="${zendesk_work_directory}"

if [ -z $ZENDESK_CODE_DIR ]; then
  echo "Failed to set the env variable"
else
  echo "Success"
  echo $ZENDESK_CODE_DIR
fi

# Docker
export DOCKER_IMAGES_DEBUG=true

# https://github.com/zendesk/generator-java
if [ -z $ARTIFACTORY_USERNAME ]; then
  echo "You need to run zdi onboarding to add ARTIFACTORY_* env variables"
else
  echo "Setting ARTIFACTORY_USER to ARTIFACTORY_USERNAME"
  [ -z $ARTIFACTORY_USER ] && export ARTIFACTORY_USER="${ARTIFACTORY_USERNAME}"
fi
