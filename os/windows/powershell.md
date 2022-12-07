Powershell bits
======================================

tail -f a file:

```
get-content $file -wait -tail 1
```

# Open CWD in explorer
```
ii .
```

# Convert output to json and redirect to file
````
Something | ConvertTo-json >somefile.json
```

# AD groups etc:
```
# Get a list of members of a group in json
Get-ADGroupMember -Identity role_name

# Also Display names
Get-ADGroupMember -Identity role_name | Get-ADUser -Property DisplayName
```
