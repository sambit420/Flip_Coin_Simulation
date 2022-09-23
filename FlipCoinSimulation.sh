toss=$(( RANDOM % 2 ))
if(( toss == 0 ))
then
    echo "Coin flips Heads"
else
    echo "Coin flips Tails"
fi
