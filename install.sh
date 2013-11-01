#!/bin/bash

set -e

#The following variables are user configurable
SKIN_PATH=`/bin/pwd`
OTRS_USER="otrs"
OTRS_GROUP="www-data"
OTRS_ROOT="/opt/otrs"

#make theme directory
/bin/mkdir -p $OTRS_ROOT/Kernel/Output/HTML/VOINET

#Fix permissions and make the proper symlinks
/bin/chown -R $OTRS_USER:$OTRS_GROUP $SKIN_PATH
/bin/chown -R $OTRS_USER:$OTRS_GROUP $OTRS_ROOT/Kernel/Output/HTML/VOINET
/bin/chmod -R 2775 $SKIN_PATH/skins/Agent/voinet
/bin/chmod -R 2775 $SKIN_PATH/skins/Customer/voinet

/bin/ln -s $SKIN_PATH/VoinetSkin.xml $OTRS_ROOT/Kernel/Config/Files/ || true
/bin/ln -s $SKIN_PATH/skins/Agent/voinet $OTRS_ROOT/var/httpd/htdocs/skins/Agent || true
/bin/ln -s $SKIN_PATH/skins/Customer/voinet $OTRS_ROOT/var/httpd/htdocs/skins/Customer || true

/bin/cp -r $SKIN_PATH/theme/VOINET $OTRS_ROOT/Kernel/Output/HTML

echo ""
echo "==========================================================="
echo "All set. Now you can use the voinet skin and theme in otrs"
echo "==========================================================="
echo ""
