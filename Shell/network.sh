#!/bin/bash
export OS_PROJECT_DOMAIN_NAME=Default
export OS_USER_DOMAIN_NAME=Default
export OS_PROJECT_NAME=admin
export OS_USERNAME=admin
export OS_PASSWORD=root
export OS_AUTH_URL=http://controller:5000/v3
export OS_IDENTITY_API_VERSION=3
export OS_IMAGE_API_VERSION=2

# Create network on OpenStack

openstack network create --share --external --provider-physical-network <Network> --provider-network-type vlan <Network>

# Create Subnet

openstack subnet create SUBNET --subnet-range 10.0.0.0/24 --network <NETWORK> --dns-nameserver 8.8.8.8

# Verify Openstack glance

openstack network list
