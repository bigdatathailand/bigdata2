#!/bin/bash

#docker doesn't like symlink
cp -r conf namenode/
cp -r conf namenode2/
cp -r conf datanode/
cp -r conf yarn/
cp -r conf historyserver/
cp -r conf hivemetastore/
cp -r conf hiveserver2/

