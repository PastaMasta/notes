SQLite
===============================================

List tables
```
SELECT name FROM sqlite_schema WHERE type='table' ORDER BY name;
```

list columns in table
```
pragma table_info(reddits);
```

