Eventviewer
===============================================

Show errors from CLI

```Powershell
Get-EventLog system -EntryType Error -After (Get-Date).AddDays(-1)

Get-EventLog application -EntryType Error -After (Get-Date).AddDays(-1)
```

