#!/bin/bash

if [-d "venv"]
then
  echo "python virtual env exists"
else
  python3 -m venv venv
fi

echo $PWD
source venv/bin/activate

pip3 install -r requirements.txt 

if [-d "logs"]
then
  echo "Log folders exists"
else
  mkdir logs
  touch logs/errors.log logs/access.logs
fi

sudo chmod -R 777 logs
echo "envsetup completed successfully!"
