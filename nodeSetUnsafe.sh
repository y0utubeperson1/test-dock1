if [ $UID  -eq  0 ]
then
  echo "----> Detect running as root, setting unsafe-perm"
  npm config set user 0
  npm config set unsafe-perm true
else
  echo ""
fi