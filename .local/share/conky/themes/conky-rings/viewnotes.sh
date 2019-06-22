#!/bin/bash

cat $HOME/todo | sed 's/^/ \${color #000000}>  \$color /g'
