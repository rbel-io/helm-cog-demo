#!/bin/sh

set -e

CHART_NAME=$1
NEW_VERSION=$2
#CHART_FILE="charts/$CHART_NAME/Chart.yaml"
CHART_FILE="Chart.yaml"
TMP_FILE="${CHART_FILE}.tmp"

echo "Updating $CHART_FILE to version $NEW_VERSION"

# Use POSIX-compatible sed replacement (no -i)
sed "s/^version:.*/version: $NEW_VERSION/" "$CHART_FILE" > "$TMP_FILE" && mv "$TMP_FILE" "$CHART_FILE"
