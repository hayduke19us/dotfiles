if [ ! -z $ZENDESK_CODE_DIR ]; then
  ok directory $ZENDESK_CODE_DIR
  ok github "${ZENDESK_CODE_DIR}/skvader" /zendesk/skvader --branch=main
  ok github "${ZENDESK_CODE_DIR}/zdi" zendesk/zdi
  ok github "${ZENDESK_CODE_DIR}/zdi-images" zendesk/zdi-images
  ok github "${ZENDESK_CODE_DIR}/agent-graph" zendesk/agent-graph --branch=main
  ok github "${ZENDESK_CODE_DIR}/generator-java" zendesk/generator-java
  ok github "${ZENDESK_CODE_DIR}/zendesk-identity-governance" zendesk/zendesk-identity-governance
  ok github "${ZENDESK_CODE_DIR}/zendesk_console" zendesk/zendesk_console
  ok github "${ZENDESK_CODE_DIR}/kennel" zendesk/kennel
  ok github "${ZENDESK_CODE_DIR}/sre-datadog-configuration-terraform" zendesk/sre-datadog-configuration-terraform --branch=main
  ok github "${ZENDESK_CODE_DIR}/kubectl_config" zendesk/kubectl_config --branch=main
  ok github "${ZENDESK_CODE_DIR}/cicd-toolkit" zendesk/cicd-toolkit
  ok github "${ZENDESK_CODE_DIR}/agent-state-mangement-service" zendesk/agent-state-management-service
else
  echo "ZENDESK_CODE_DIR is not set"
fi
