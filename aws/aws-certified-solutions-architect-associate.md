AWS Solutions Architect - associate
======================================

https://aws.amazon.com/certification/certified-solutions-architect-associate/

Certs valid for 2 years

New beta - longer but cheaper - but 3 months wait for results

AWS this week - 'A cloud guru' AWS news youtube
https://www.youtube.com/channel/UCp8lLM2JP_1pv6E0NQ38pqw/featured

AWS history
---------------
* Started 2003 - internal white paper + business case for selling it as a service
* SQS - 2004 - simple queue service
* AWS official 2006
* 2007 - loads of devs joining 180,000
* 2010 - Amazon.com runs on it
* 2012 - first re:invent - was masd
* 2013 - Firt certs
* 2014 - commited for 100% renewal
* 2015 - $6B USD per year revenue - 90% growth
* 2016 - $13B USB

Concepts and components, service overview
================

AWS global infrastructure
---------------

Regions and AZs
* Region is a geographical location
* Each region has 2 or more availability zones - each AZ is a datacenter (or two)
* AZs are far enough apart to survive disasters etc
* Services should be across multiple AZs for HA

Edge locations
* End points for AWS used for caching content
* Content delivery networks
* Lots more edge locations than regions.

Compute
---------------

EC2 - elastic complute cloud
* VMs in AWS platform
* Can also have physicals

EC2 container services
* Docker at scale

Elastic beanstalk
* For devs who don't understand AWS
* Auto provisions a load of stuff

Lambda
* Entire 'A cloud guru' site runs on it
* Code that runs in the cloud no OS to manage - just code
* serverless website
* Later on work on converting these notes to audio

Lightsail
* VPS services
* Provisions server with Fixed IP
* Watered down EC2 - all you worry about is the OS

Batch
* Not on exams yet
* Used for, you guessed it - batch computing in AWS

Storage
---------------

S3 - simple storage service
* One of the oldest services
* Object based storage
* Data is stored in 'buckets' in the cloud

EFS - Eleastic file system
* network attached storage
* Can be mounted on multiple VMs

Glacier
* Data archival

Snowball
* Data import from your DC to AWS DCs - used for huge amounts of data
* Physical box that you plug in and fill

Storage gateway
* Appliances you install in your DC / office
* Replicates data back to S3
* 4 different types

Database
---------------

RDS - relational database service
* MSQL, postgres, Oracle etc
* Arura - AWSs own database

DynamoDB
* Non relational databases

Elasticache
* Cached common queried things from DB server

Red Shift
* Data warehousing
* Business intelligence

Migration
---------------

AWS Migration Hub
* Tracking service for tracking progress of migrating apps to AWS

Application Discovery Service
* Automated tools for detecting apps + dependencies

Database Migration Service
* Easy way to migrate DB to AWS

Networking and content delivery
---------------

VPC - Amazon virtual private cloud
* Virtual DC
* CIDER address ranges
* Routing tables
* Firewalls

Cloudfront
* AWS's CDN

Route53
* AWS DNS service

API gateway
* Allows you to create your own APIs for other services

Direct Connect
* Way of running dedicated line to AWS from your site into VPC

Developer Tools
---------------

Codestar
* Helps a group of devs get working togehter
* colab tools / Project management
* Continous delivery tool chain

CodeCommit
* Code storage
* Source control
* Git repos

CodeBuild
* Compile / test code
* Produces packages for deployment

CodeDeploy
* Automates code deployment
* goes to Lambda, EC2 or on premise

CodePipeline
* CD service
* Model / visualise steps to release

X-Ray
* Debuging serverles applications
* Request tracing
* Helps with route cause / bottlenecks

Cloud9
* IDE (Intergrated dev environment) environment in AWS console
* Develop in your browser
* Was a 3rd party bought in

Management Tools
---------------

CloudWatch
* Monitoring service

CloudFormation
* Way to script infrastructure
* Templates for all sorts
* infrastructure as code

CloudTrail
* Audit trail of everything done - every AWS management API call
* On by default, but stores for 1 week

Config
* Monitors config of whole AWS environemnt
* Lets you query / rollback everything

OpsWorks
* Similar to elastic beanstalk
* Uses Chef and Puppet to automate your environments

Service Catalog
* Tool to manage what services are approved for use
* OSs, databases images -> multi-tier architecture etc

Systems Manager
* Interface to manage AWS resources
* Typicaly for EC2 - rolling out patching
* Can group resources

Trused Advisor
* Gives advice on security in AWS
* If ports are open
* If services aren't using all resources you can or too much

Managed Services
* AWS offer a managed service approach to AWS

Media Services
---------------

Elastic Transcoder
* Used to transcode media between formats

MediaConvert
* File based video transcoding service
* Broadcast grade features

MediaLive
* Broadcast grade live video processing service
* For delivery to internet connected multi-screen devices

MediaPackage
* Prepares and protects media for delivery across internet

MediaStore
* Storage optimised for media

MediaTailor
* allows for targeted advertising into media streams

Machine learning
---------------

SageMaker
* Easy for devs to use deep learning

Comprehend
* sentiment analysis on data - good / bad things on your products

Deeplens
* AI aware cameras to identify what it's looking at
* processing done on the device

Lex
* Powers Alexa
* AI Chat for talking to customers

Machine Learning
* Throw dataset to AWS
* It analyses data
* Predicts outputs etc
* Used to provide recommended products on Amazon.com

Polly
* Takes text and turns it into speach
* Can choose languages + regions

Rekognition
* Video + image recondiiton
* Upload file - tells you what is in it
* Gives % of accuracy

Amazon Translate
* machine translation service - like google translate

Transcribe
* New service for auto speach recondition to make subtitles etc

Analytics
---------------

Athena
* SQL queries vs things in S3 buckets
* completely serverless

EMR - Elastic Map Reduce
* Processing large ammounts of data
* Chops data up for analysis

CloudSearch
* Search services for AWS

ElasticSearch Service
* Search services for AWS

Kinesis
* Ingesting large ammounts of data into AWS - social media etc

Kinesis Video Streams
* same as kinesis but for streaming

QuickSight
* Amazons business intelligence tools
* much cheaper than competitors

Data Pipeline
* Used to move data between AWS services

Glue
* ETL - extract transform and load
* Processing / formatting large amount of data into formats you want

Security Identification and compliance
---------------
Mobile services
---------------
Customer Engagement
---------------
Business productivity
---------------
Desktop and app streaming
---------------
Internet of things
---------------
Game Development
---------------
