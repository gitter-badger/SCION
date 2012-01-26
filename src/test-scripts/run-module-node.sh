# Copyright (C) 2011 Jacob Beard
# Released under GNU LGPL, read the file 'COPYING' for more information

dn=`dirname $0`
abspath=`cd $dn; pwd`
t=`dirname $abspath`
basedir=`dirname $t`

moduleToRun=$1

shift

node $basedir/lib/js/r.js -lib $basedir/target/core/runner.js $basedir/target/core $moduleToRun $*
