#!/bin/bash

postman login --with-api-key {API_KEY}
postman collection run {COLLECTION_UUID} -e {ENV_UUID} -i {WORKFLOW_UUID} -d ./test/pims_rule_test_dataset.csv -k
