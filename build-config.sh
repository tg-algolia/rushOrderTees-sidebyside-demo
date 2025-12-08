#!/bin/bash

# This script runs during Netlify build to inject environment variables into config.js

CONFIG_FILE="config.js"

# Replace placeholders with environment variables
sed -i.bak "s|__INDEX1_APP_ID__|${INDEX1_APP_ID}|g" "$CONFIG_FILE"
sed -i.bak "s|__INDEX1_API_KEY__|${INDEX1_API_KEY}|g" "$CONFIG_FILE"
sed -i.bak "s|__INDEX1_INDEX_NAME__|${INDEX1_INDEX_NAME}|g" "$CONFIG_FILE"
sed -i.bak "s|__INDEX1_SEARCH_MODE__|${INDEX1_SEARCH_MODE}|g" "$CONFIG_FILE"

sed -i.bak "s|__INDEX2_APP_ID__|${INDEX2_APP_ID}|g" "$CONFIG_FILE"
sed -i.bak "s|__INDEX2_API_KEY__|${INDEX2_API_KEY}|g" "$CONFIG_FILE"
sed -i.bak "s|__INDEX2_INDEX_NAME__|${INDEX2_INDEX_NAME}|g" "$CONFIG_FILE"
sed -i.bak "s|__INDEX2_SEARCH_MODE__|${INDEX2_SEARCH_MODE}|g" "$CONFIG_FILE"

sed -i.bak "s|__TITLE_ATTR__|${TITLE_ATTR}|g" "$CONFIG_FILE"
sed -i.bak "s|__IMAGE_ATTR__|${IMAGE_ATTR}|g" "$CONFIG_FILE"
sed -i.bak "s|__FIELD1_ATTR__|${FIELD1_ATTR}|g" "$CONFIG_FILE"
sed -i.bak "s|__FIELD1_LABEL__|${FIELD1_LABEL}|g" "$CONFIG_FILE"
sed -i.bak "s|__FIELD2_ATTR__|${FIELD2_ATTR}|g" "$CONFIG_FILE"
sed -i.bak "s|__FIELD2_LABEL__|${FIELD2_LABEL}|g" "$CONFIG_FILE"

sed -i.bak "s|__HITS_PER_PAGE__|${HITS_PER_PAGE}|g" "$CONFIG_FILE"

# Remove backup file
rm -f "${CONFIG_FILE}.bak"

echo "Configuration file generated successfully"
