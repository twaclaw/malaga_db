# Previous databases

This databases contain previous measurements

* `weewx_2014-2015.sdb`:  measures between 02.11.2013 and 04.12.2015

## Example code to read the database 

```python
import sqlite3
import pandas as pd

DATABASE = 'weewx_2014-2015.sdb'

# Create your connection.
cnx = sqlite3.connect(DATABASE)

df = pd.read_sql_query("SELECT * FROM archive", cnx)

df['date'] = pd.to_datetime(df['dateTime'],unit='s') 
```