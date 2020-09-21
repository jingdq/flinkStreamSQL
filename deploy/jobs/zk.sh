#!/bin/zsh
ZKHOME=/Users/jingdongqi/opt/module/apache-zookeeper-3.5.7
sudo "$ZKHOME"/bin/zkServer.sh start "$ZKHOME"/deploy/z1/z1.cfg
sudo "$ZKHOME"/bin/zkServer.sh start "$ZKHOME"/deploy/z2/z2.cfg
sudo "$ZKHOME"/bin/zkServer.sh start "$ZKHOME"/deploy/z3/z3.cfg