#!/bin/zsh
# useage: yarnPer.sh jobName(param1) sqlfile(param2)
FLINKSTREAMSQL=/Users/jingdongqi/Github/flinkStreamSQL/bin
sh "$FLINKSTREAMSQL"/submit.sh \
  -mode yarnPer \
  -sql "$2" \
  -name "$1" \
  -localSqlPluginPath /Users/jingdongqi/Github/flinkStreamSQL/sqlplugins \
  -remoteSqlPluginPath /Users/jingdongqi/Github/flinkStreamSQL/sqlplugins \
  -flinkconf /Users/jingdongqi/opt/module/flink-1.10.0/conf \
  -yarnconf /Users/jingdongqi/opt/module/hadoop-3.1.3/etc/hadoop \
  -flinkJarPath /Users/jingdongqi/opt/module/flink-1.10.0/lib \
  -confProp "{\"time.characteristic\":\"eventTime\",\"logLevel\":\"info\"}" \
  -queue default
