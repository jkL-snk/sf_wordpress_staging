#!/bin/bash
date=`date +"%Y_%m_%d_%H-%M"`
filename='wordpress-backup_'$date'.tar.gz'
dst_path='/mnt/webdrive'
dst_dir='/sf-backups/'
src_dir='/var/www/html'
src_file=$filename
#change dst_dir and filename to yours

cd $src_dir
tar -czvf $filename latest-backup.sql
mv $filename $dst_path$dst_dir/
echo successfule backup to $dst_path$dst_dir/$filename



