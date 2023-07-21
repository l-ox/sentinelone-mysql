#!/bin/bash

# Delete file from previous run.
rm /home/<user>/sentinelone_export/sentinelone

# Fetch new export from SentinelOne Console via API.
curl -X GET https://<tenant_id>.sentinelone.net/web/api/v2.1/export/agents -H "Authorization: ApiToken <api_token>" >> /home/<user>/sentinelone_export/sentinelone

# Truncate the existing data in the table.
mysql --user=<mysql_username> --password=<mysql_password> <database> -e "TRUNCATE TABLE <table>;"

# Import the final CSV file into the MySQL table.
mysql --user=<mysql_username> --password=<mysql_password> <database> -e "LOAD DATA LOCAL INFILE '/home/<user>/sentinelone_export/sentinelone' INTO TABLE <table> FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;"
