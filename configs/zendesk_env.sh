zendesk_work_directory=$(find ~ -name zdi | head -n 1)
echo "Setting envirnment variable ZENDESK_CODE_DIR to ${zendesk_work_directory}"
export ZENDESK_CODE_DIR="${zendesk_work_directory}"

if [ -z $ZENDESK_CODE_DIR ]; then
  echo "Failed to set the env variable"
else
  echo "Success"
  echo $ZENDESK_CODE_DIR
fi
