# cat upload_license.sh 
#!/bin/bash


sudo cp $1 /etc/nsd/licenses/
cd /etc/nsd/NSD_confd/
source confdrc

confd_cli -C -u admin << EOF
license license-upload upload filename $1
show license license-database database
EOF

sudo /etc/init.d/nsd_db_rest restart
