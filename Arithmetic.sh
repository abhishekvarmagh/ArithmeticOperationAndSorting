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

