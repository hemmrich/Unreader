# Unreader

A script to automatically mark specified emails as unread. In its current version, the script will mark all emails sent before today that match the ```from``` field in the config.yaml file as read.

### Usage
Modify the ```config.yaml``` file to match your needs. For example:

```
---
username: mygmailaccount
password: mygmailpassword
from: ['dealalerts@slickdeals.net', 'info@massdrop.com']
```

You can then run this periodically (daily) using ```launchd``` on OSX or ```cron``` on Linux.
