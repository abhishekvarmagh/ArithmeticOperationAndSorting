#! /bin/bash -x

echo "Arithmetic Operation And Sorting"
read -p "Enter three number : " a b c
echo "$a $b $c"
echo "scale=2;$a+($b*$c)" | bc 
echo "scale=2;($a*$b)+$c" | bc
echo "scale=3;$c+($a/$b)" | bc
echo "scale=2;($a%$b)+$c" | bc
