#!/bin/bash
taniumVersion=$(sudo /Library/Tanium/TaniumClient/TaniumClient --version)
if [[ $taniumVersion != '' ]]; then
    echo "<result>$taniumVersion</result>"
else
    echo "<result>Not Installed</result>"
fi
exit 0
