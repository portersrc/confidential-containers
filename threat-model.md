# Threat Model for Confidential Containers

In the simplest formulation of Confidential Containers, "you" are a guest
in the cloud, and you want to be protected against threats originating
elsewhere in the cloud. These threats could include (for any node in the
cloud):
1. The host operating system
2. The cloud provider (which controls the host OS)
3. Other virtual machines (and their processes) co-located in the same cloud
4. Any other processes on the host machine (including the kubernetes control plane).

Similarly, the following two categories are trusted, and vulnerabilities
originating from them are out-of-scope:
1. Vulnerabilities inside your guest processes
2. Vulnerabilities inside the host hardware

One can reason about the threat model in terms of trusted execution environments
(TEEs). In Confidential Containers, the hardware and guest work in tandem to
establish a TEE for the guest. This provides isolation and integrity protection
for data in use. The following diagram shows what components in a Confidential
Containers setup are part of the TEE (outlined in a green box):

![Threat model](./images/threat-model.svg)
