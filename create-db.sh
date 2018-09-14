#!/bin/bash
echo '
.timer off
.read numbers.sql
.read dates.sql' | $(sqlite3 sql.db) 

# echo $(echo .tables > $(sqlite3 dates.db) )
# .schema months
# select * from months' | 
