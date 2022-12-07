Packages
======================================

List all GPG key IDs and summaries installed
```
rpm -q --queryformat "%{VERSION} %{SUMMARY}\n" $(rpm -q gpg-pubkey)
```
