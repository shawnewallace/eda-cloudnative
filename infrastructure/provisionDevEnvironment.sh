#!/bin/bash
terraform workspace select edacloudnative || terraform workspace new edacloudnative
terraform apply -var-file dev.tfvars