#! /bin/bash  -x


echo WLCOME TO THE ARITHMATIC COMPUTATION AND SORTING


read -p "ENTER 1st Number :" a
read -p "ENTER 2nd Number :" b
read -p "ENTER 3rd Number :" c

d=$( echo $a $b $c | awk '{print $1+$2*$3 }' )

echo $d

e=$( echo $a $b $c | awk '{print $3+$1/$2 }' )
echo  $e

f=$( echo $a $b $c | awk '{print $1*$2+$3 }' )
echo $f

g=$( echo $a $b $c | awk '{print $1 % $2 + $3 }' )

echo $g
