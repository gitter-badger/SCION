#   Copyright 2011-2012 Jacob Beard, INFICON, and other SCION contributors
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

f=`readlink -f $0`
dn=`dirname $f`
abspath=`cd $dn; pwd`
t=`dirname $abspath`
basedir=`dirname $t`

moduleToRun=$1
shift
interpreter=${1-node}
shift

$interpreter $basedir/lib/js/r.js -lib $basedir/target/core/runner.js $basedir/target/core $moduleToRun $*