#!/bin/bash

#docker doesn't like symlink
cp -rv conf namenode/
cp -rv conf namenode2/
cp -rv conf datanode/
cp -rv conf yarn/
cp -rv conf historyserver/
cp -rv conf hivemetastore/
cp -rv conf hiveserver2/

