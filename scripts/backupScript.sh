#!/bin/bash
####################################
#
# Backup script.
#
####################################

# What to backup.
backup_files1="/etc/hybris/hybris/bin/custom"
backup_files2="/etc/hybris/hybris/config/local*"


# Where to backup to.
dest="/opt/files/Backups"

# Create archive filename.

archive_file=ecommerce-$(date +%-Y%-m%-d)-$(date +%-T).7z

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"

# Backup the files using tar.

7z a $dest/$archive_file $backup_files1 $backup_files2

# Print end status message.

echo "Backup finished"


# Long listing of files in $dest to check file sizes.
ls -lh $dest
