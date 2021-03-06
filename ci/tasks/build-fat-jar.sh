#!/bin/bash
set -e
base_dir=`pwd`
app_dir=${base_dir}/chatter-git/${app_name}
out_dir=${base_dir}/out

cd $app_dir
./mvnw clean package

timestamp=`date -u +%Y%m%d%H%M`

jar_name=$(basename `ls $app_dir/target/*.jar`)
cp $app_dir/target/*.jar ${out_dir}/${jar_name/SNAPSHOT/$timestamp}

