#! /usr/bin/env sh
set -e
echo "Prepare deploy local dir"
UPDATE_SITE_DIR=packaging/org.obeonetwork.dsl.uml2.update/target/
echo ${UPDATE_SITE_DIR}
TP_DIR=releng/org.obeonetwork.dsl.uml2.target/
echo ${TP_DIR}
BUNDLE_DIR=packaging/org.obeonetwork.dsl.uml2.product/
echo ${BUNDLE_DIR}
DEPLOY_LOCAL_DIR=$0
echo ${DEPLOY_LOCAL_DIR}
# Create nightly folder
mkdir $DEPLOY_LOCAL_DIR 
# Copy update-site
cp -r $UPDATE_SITE_DIR $DEPLOY_LOCAL_DIR
# Copy target platform
cp -r $TP_DIR $DEPLOY_LOCAL_DIR
ls $DEPLOY_LOCAL_DIR
# Create bundles folder
mkdir $DEPLOY_LOCAL_DIR/bundles
# Copy bundles
cp -r $BUNDLE_DIR $DEPLOY_LOCAL_DIR/bundles
ls $DEPLOY_LOCAL_DIR/bundles
exit 0
