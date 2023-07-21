# SentinelOne MySQL Import Script

**About:** This bash/shell script reaches out to SentinelOne's API, downloads the full list of agents, then imports into a MySQL database to be used however you require - for example to link to an analytics engine.

**Instructions:**
1. Create an API key in the SentinelOne console and note it down, along with your console tenant ID/URL.
2. Install MySQL on the Linux machine that will run this script, or run MySQL on an external database and amend the commands to connect to an external database rather than local.
3. Create your database and a table with a schema that matches the schema of the export from SentinelOne.
4. Using your notes, replace <tenant_id>, <api_token>, <user> (the username of your user on the Linux machine), <mysql_username>, <mysql_password>, <database>, and <table> fields in the script.
5. Copy the script to the Linux machine, give it executable rights with "chmod +x script.sh", and run it to test with "./script.sh".
6. Enjoy! Feel free to run manually or on a scheudle with cron.
