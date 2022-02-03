Jira
======================================

Find all uncompleted jiras reported by me

```
resolution = Unresolved AND status != Closed and reporter = currentUser() ORDER BY created ASC
```

Find all jiras opened by me, but not assigned to me

```
reporter in (currentUser()) AND assignee not in (currentUser())
```

Find Jiras completed by me after a date

```
assignee in (currentUser()) AND created >= "2021-01-01" AND resolution != "Unresolved" ORDER BY created desc
```
