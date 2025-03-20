#!/bin/bash

#Este codigo funciona pero mejor el de abajo, más claro
# distros=(Ubuntu Linux\ Mint Windows AWS)

# for i in "${distros[@]}"
# do
# echo "$i"

# if [ "$i" == "AWS" ]
# then
# echo "entro en el if"
# fi

# done

#!/bin/bash

# Define el array de distribuciones
distros=("Ubuntu" "Linux Mint" "Windows" "AWS")

# Itera sobre cada elemento del array
for i in "${distros[@]}"; do
    echo "$i"

    # Verifica si el elemento es "AWS"
    if [ "$i" == "AWS" ]; then
        echo "Entro en el if"
    fi

done
