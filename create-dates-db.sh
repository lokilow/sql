#!/bin/bash
echo '
.timer off
.read dates.sql' | $(sqlite3 dates.db) 

# echo $(echo .tables > $(sqlite3 dates.db) )
# .schema months
# select * from months' | 
