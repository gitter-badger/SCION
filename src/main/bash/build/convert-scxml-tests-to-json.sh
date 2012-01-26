#!/bin/bash
# Copyright (C) 2011 Jacob Beard
# Released under GNU LGPL, read the file 'COPYING' for more information


dn=`dirname $0`
abspath=`cd $dn; pwd`
basedir=`dirname $abspath`
projdir=`cd $dn/../../../../; pwd`
utildir=`cd $dn/../util/; pwd`

for i in $projdir/src/test/*; do 
	x=`basename $i`; 
	mkdir $projdir/target/test/$x; 
	for scxmlFile in $i/*.scxml; do 
		y=`basename $scxmlFile`; 
		echo converting $scxmlFile to json at "$projdir/target/test/$x/$y.js"; 
		$utildir/scxml-to-json.sh $scxmlFile --param wrapInAsyncModuleDefinition "true()" > $projdir/target/test/$x/$y.js; 
	done; 
done
