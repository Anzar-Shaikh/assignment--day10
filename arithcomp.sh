#! /bin/bash  -x

declare -A dict
echo WLCOME TO THE ARITHMATIC COMPUTATION AND SORTING


read -p "ENTER 1st Number :" a
read -p "ENTER 2nd Number :" b
read -p "ENTER 3rd Number :" c

d=$((a + b * c))
dict['d']=$d
echo $d

e=$(( c + a / c ))
dict['e']=$e
echo  $e

f=$(( a * b + c ))
dict['f']=$f
echo $f

g=$((a%b+c))
dict['g']=$f
echo $g


echo "value of dict" ${dict[@]}


save=(${dict[@]})
echo "value of arry" : ${save[@]}


n=${#save[@]}

for ((i=0; i<$n; i++))
do
        for (( j=0; j<$(($n-$i-1)); j++ ))
         do
           if [ ${save[$j]} -lt ${save[ $(($j+1)) ]} ]
             then
		a=${save[$j]}
             save[$j]=${save[ $(($j+1)) ]}
  	     save[ $(($j+1)) ]=$a
            fi
	done
done
  echo "sorted Arry in descending order :"
  echo ${save[@]}


for ((i=0; i<$n; i++))
do
        for (( j=0; j<$(($n-$i-1)); j++ ))
         do
           if [ ${save[$j]} -gt ${save[ $(($j+1)) ]} ]
             then
                a=${save[$j]}
             save[$j]=${save[ $(($j+1)) ]}
             save[ $(($j+1)) ]=$a
            fi
        done
done
  echo "sorted Arry in descending order :"
  echo ${save[@]}


