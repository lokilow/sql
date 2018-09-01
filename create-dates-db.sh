#!/bin/bash
rm dates.db
echo '
.timer off
.read dates.sql
.mode csv
.import months.csv months' | $(sqlite3 dates.db) 

# echo $(echo .tables > $(sqlite3 dates.db) )
# .schema months
# select * from months' | 
