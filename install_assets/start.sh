#~/bin/bash
#这个脚本主要是加入了 classpath 的设置，同时支持 java的远程debug

export CLASSPATH=$CLASSPATH:`dirname $0`/../config/java
echo "classpath: " $CLASSPATH
jruby -S script/jruby-$1 $2 $3
