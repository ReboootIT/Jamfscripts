#!/bin/sh
#
############################################################################
#
# Extension Attribute checks to display FireEye HX installed version number.
# 
#
############################################################################
FireEyeVersion=`/usr/bin/defaults read /Library/FireEye/xagt/xagt.app/Contents/Info CFBundleVersion`
echo "<result> $FireEyeVersion </result>"

## OR 


RESULT="Not Installed"

if [ -f "/Library/FireEye/xagt/xagt.app/Contents/Info.plist" ] ; then
    RESULT=$( defaults read /Library/FireEye/xagt/xagt.app/Contents/Info CFBundleVersion )
fi

echo "<result>$RESULT</result>"
