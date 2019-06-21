#!/bin/bash

cat ~/tmp | sed 's/^/ \${color #000000}>  \$color /g'
