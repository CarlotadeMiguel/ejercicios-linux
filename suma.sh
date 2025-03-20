#!/bin/bash
addition () {
sum=$(($1+$2))
return $sum
}
read -p "Ingresa un número: " int1
read -p "Ingresa un número: " int2
addition $int1 $int2
echo "El resultado es : " $?

#Otra forma recomendada de hacerlo 
# addition () {
#     sum=$(( $1 + $2 ))
#     echo "$sum"
# }

# read -p "Ingresa un número: " int1
# read -p "Ingresa un número: " int2

# result=$(addition $int1 $int2)
# echo "El resultado es: $result"


#Para hacerlo sin ver el numero que se introduce
#!/bin/bash
# addition () {
# sum=$(($1+$2))
# return $sum
# }
# read -p "Ingresa un número: " -s int1
# read -p "Ingresa un número: " -s int2
# addition $int1 $int2
# echo "El resultado es : " $?
