#! /bin/bash -x

count=0
declare -A results

echo "Arithmetic Operation And Sorting"
read -p "Enter three number : " a b c
echo "$a $b $c"

results[operation1]=`echo "scale=2;$a+($b*$c)" | bc ` 
results[operation2]=`echo "scale=2;($a*$b)+$c" | bc `
results[operation3]=`echo "scale=3;$c+($a/$b)" | bc `
results[operation4]=`echo "scale=2;($a%$b)+$c" | bc `
echo ${results[@]}

while [[ $count -ne ${#results[@]} ]]
do
	arr[$count]=${results[operation"$(( count+1 ))"]}
	count=$(( count+1 ))
done
echo ${arr[@]}
length=${#arr[@]}

function DescendingOrder() {
	for (( i=0; i<$length; i++ ))
	do
		for(( j=i+1; j<=$length; j++ ))
		do
			if [[ ${arr[i]%.*} -lt ${arr[j]%.*} ]]
			then
				temp=${arr[i]}
				arr[i]=${arr[j]}
				arr[j]=$temp
			fi
		done
	done
	echo ${arr[@]}
}
DescendingOrder
