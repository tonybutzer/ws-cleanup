# /bin/bash


echo $HOME

echo 'what is the instance name?'
read instance

echo SAVING $instance to s3


aws s3 sync $HOME s3://ws-in/tony/$instance/backup/ --exclude $HOME'/miniconda3/*' --exclude  $HOME'/.local/*'
