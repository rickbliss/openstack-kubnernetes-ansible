#!/bin/bash
source *openrc.sh*
if [ -z "$OS_USERNAME" ]; then
  echo "OpenStack Project RC must be sourced!"
  exit 1
fi
export TF_VAR_openstack_user_name=$OS_USERNAME
export TF_VAR_openstack_tenant_name=$OS_TENANT_NAME
export TF_VAR_openstack_tenant_id=$OS_TENANT_ID
export TF_VAR_openstack_password=$OS_PASSWORD
export TF_VAR_openstack_auth_url=$OS_AUTH_URL
echo "Terraform Varables set."
