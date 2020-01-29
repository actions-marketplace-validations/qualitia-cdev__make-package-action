#!/bin/bash -eu

echo "Initialize local valuables"

export AWS_ACCESS_KEY_ID=$1
export AWS_SECRET_ACCESS_KEY=$2
export AWS_DEFAULT_REGION=$3
readonly SERVICE_NAME=$4
readonly TARGET_DIR=$5
readonly PACKAGE_FILE_PATH=$6

readonly user_id=$(aws sts get-caller-identity | jq -r '.Account')
readonly s3_pkg_path="${SERVICE_NAME}-${user_id}/${TARGET_DIR%/}/${GITHUB_SHA}.tar.gz"

echo "[Show valuables]"
echo "user_id: ${user_id}"
echo "s3_pkg_path: ${s3_pkg_path}"
echo "PACKAGE_FILE_PATH: ${PACKAGE_FILE_PATH}"
echo "SERVICE_NAME: ${SERVICE_NAME}"
echo "TARGET_DIR: ${TARGET_DIR}"

echo "[Making package file]"
echo "package: ${s3_pkg_path}" > ${PACKAGE_FILE_PATH}

echo "[Show contents of ${PACKAGE_FILE_PATH}]"
cat ${PACKAGE_FILE_PATH}

echo "Complete!!"