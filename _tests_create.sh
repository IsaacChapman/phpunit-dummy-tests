#!/bin/bash
set -o errexit -o pipefail
for f in `cat _tests_list.txt | grep -v ^#`; do
  if [ -f $f ]; then
    echo "$f already exists"
  else
    echo "making $f"
    dir=`dirname $f`
    file=`basename $f`
    class=`echo $file | sed 's/\.php//'`
    mkdir -p $dir
    sed "s#__TEST__#$class#g" _tests_template.php > $f
  fi
done
