read -p "Enter no of times to toss: " n

heads_count=0
tails_count=0

for(( i = 1; i <= n; i++ ))

do

    toss=$(( RANDOM % 2 ))
    if(( toss == 0 ))

    then

        echo "Flip-$i Heads"
        (( heads_count++ ))

    else

        echo "Flip-$i Tails"
        (( tails_count++ ))

    fi 

done

echo "The Heads count is $heads_count" 

echo "Tails Count is $tails_count"

if(( heads_count > tails_count ))

then

    echo "Winner is Heads"

elif(( tails_count > heads_count ))

then

    echo "Winner is Tails"

else    

    echo "It is tie"

fi