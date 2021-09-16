tar -cvvf /var/backup/home.tar /home
mv /var/backup/home.tar /var/backup/home07102021.tar
ls -lah >> /var/backup/file_report.txt
free -h >> /var/backup/disk_report.txt
