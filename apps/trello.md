Trello
======================================

Dump all checklist items, share card as JSON:

```
cat file.json | jq -r '.checklists[].checkItems[].name'
```
