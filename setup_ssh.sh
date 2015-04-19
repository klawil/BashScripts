#!/bin/bash
localip='192.168.0.12'
ssh-keygen -t rsa
ssh-copy-id william@forensicsdb.com
ssh-copy-id -p 1222 master@home.opfoolbird.com
ssh-copy-id master@$localip
