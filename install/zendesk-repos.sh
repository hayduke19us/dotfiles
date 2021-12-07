if [ ! -z $ZENDESK_CODE_DIR ]; then
  ok directory $ZENDESK_CODE_DIR
  ok github "${ZENDESK_CODE_DIR}/skvader" /zendesk/skvader --branch=main
  ok github "${ZENDESK_CODE_DIR}/zdi" zendesk/zdi
  ok github "${ZENDESK_CODE_DIR}/zdi-images" zendesk/zdi-images
  ok github "${ZENDESK_CODE_DIR}/agent-graph" zendesk/agent-graph --branch=main
  ok github "${ZENDESK_CODE_DIR}/generator-java" zendesk/generator-java
else
  echo "ZENDESK_COD_DIR is not set"
fi
