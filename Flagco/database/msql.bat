@echo off
echo Running SQL Script '%4' on '%1'
mysql -h %1 -u %2 --pass=%3 < "%4"
echo Done...