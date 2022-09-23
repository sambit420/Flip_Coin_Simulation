#Variables

target_count=21
heads_count=0
tails_count=0
flips_count=0


while(( 1 ))
do

    (( flips_count++ ))
    echo -n "Flip-$flips_count is "
    toss=$(( RANDOM % 2 ))
    
    if(( toss == 0 ))
    then

        echo "Heads"
        (( heads_count++ ))

    else

        echo "Tails"
        (( tails_count++ ))

    fi

    if(( heads_count == target_count || tails_count == target_count ))
    then

        break

    fi 

done

echo "Heads count is $heads_count" 
echo "Tails Count is $tails_count"

if(( heads_count > tails_count ))
then

    echo "Heads won by $(( heads_count - tails_count ))"

elif(( tails_count > heads_count ))
then

    echo "Tails won by $(( tails_count - heads_count ))"

else    

    echo "It is tie"

fi