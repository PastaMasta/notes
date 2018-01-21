snowball
======================================

Used to mass upload data to AWS rather than using internet pipes

AWS Import / Export disk pre-dates this
* Post in HDDs
* lots of different types of FS / connector - standard approach required

Three types:
* Snowball
* Snowall edge
* Snowmobile

Can import / export from S3 (Glacier -> S3 -> snowball)

Standard snowball
---------------

* Has a kindle on the front for control
* Supports SFP+ optical / fiber

* 80TB / 50TB

Well protected:
* Tamper resistant encloures
* 256 AES encryption
* TPM

Snowball edge
---------------

Same form factor as AWS

* 100TB of Data
* On-board storage + compute
* Can run Lambda functions from them
* Can be clustered

Snowmobile
---------------

Container on a truck

* 100 PB per truck
* About 6 months to import EB

---------------
