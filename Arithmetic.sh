#! /bin/bash -x

echo "Arithmetic Operation And Sorting"
read -p "Enter three number : " a b c
echo "$a $b $c"

declare -A results
results["operationOne"]=`echo "scale=2;$a+($b*$c)" | bc ` 
results["operationTwo"]=`echo "scale=2;($a*$b)+$c" | bc `
results["operationThree"]=`echo "scale=3;$c+($a/$b)" | bc `
results["operationFour"]=`echo "scale=2;($a%$b)+$c" | bc `
echo ${results[@]}
