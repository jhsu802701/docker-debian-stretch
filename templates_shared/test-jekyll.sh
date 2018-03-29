#!/bin/bash

# This script tests your Jekyll installation.

sh /home/winner/shared/info.sh

jekyll new my-awesome-site
cat /home/winner/shared/ports.txt
echo '**********************'
echo 'OPEN YOUR WEB BROWSER.'
echo 'GO TO THE FOLLOWING URL:'
echo 'http://localhost:4000'
echo 'If you are using Docker or Vagrant, the port number may be different'
echo '********************************************************************'
cd my-awesome-site && jekyll serve --host 0.0.0.0
