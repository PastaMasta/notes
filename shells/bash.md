Shell oneliners
===============================================


Find all cases in a case statement inside a function:
```
cat file | sed -n '/case/,/esac/p' | awk '/^\s.*\)/ && !/\(/ {print$1}'
```
