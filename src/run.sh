#!/bin/bash

source .env
dry_fx_path=${PROJECT_PATH}dry_cond_fx_estimate/

exp_num=$1
source ${dry_fx_path}src/.venv/bin/activate
(time python3 ${dry_fx_path}src/main.py ${exp_num}) > run.log 2>&1
deactivate
