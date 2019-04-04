SaltStack overview
======================================

Has a standard agent - master setup, but can be run with only the agent or only the server side - agentless using SSH for everything.

"Very fast"

Clients do all the processing - master just masters
No MQ for master/client comms - uses ZeroMQ or raw TCP

Plugins can run on top of the communications framework for all sorts

Can run modules directly on hosts
* Modules == chef reources
* Salt States == Cookbooks / playbooks

Topfiles
==================

Used to apply states to machines (runlist in Chef)
