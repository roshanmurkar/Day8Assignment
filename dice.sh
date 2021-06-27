#!/bin/bash -x

declare -A faceValue


read -p "Enter how many times you want to roll die : " rollDieTimes
isRoll=0;
Face_ONE=1;
FACE_TWO=2;
FACE_THREE=3;
FACE_FOUR=4;
FACE_FIVE=5;
FACE_SIX=6;

while [[ isRoll -lt rollDieTimes ]]
do
        roll=$(( RANDOM%6 + 1 ))
        case $roll in
                $FACE_ONE)
                        face="One"
                        ;;
                $FACE_TWO)
                        face="Two"
                        ;;
                $FACE_THREE)
                        face="Three"
                        ;;
                $FACE_FOUR)
                        face="Four"
                        ;;
                $FACE_FIVE)
                        face="Five"
                        ;;
                $FACE_SIX)
                        face="Six"
                        ;;
                *)
                        face="Unpredictable situation happen"
                        ;;
        esac
        faceValue[$face]=$roll
        echo $face
        isRoll=$(( $isRoll + 1 ))
done

echo "${faceValue[@]}"
echo ${!faceValue[@]}




RANDOM=$$
PIPS=6
MAXTHROWS=100
throw=0

ones=0
twos=0
threes=0
fours=0
fives=0
sixes=0

print_result ()
{
echo
echo "ones =   $ones"
echo "twos =   $twos"
echo "threes = $threes"
echo "fours =  $fours"
echo "fives =  $fives"
echo "sixes =  $sixes"
echo
}

update_count()
{
case "$1" in
  0)
	 ((ones++));;
  1)

       	 ((twos++));;
  2)
	 ((threes++));;
  3)
	 ((fours++));;
  4)
	 ((fives++));;
  5)
	 ((sixes++));;
esac
}

echo


while [ "$throw" -lt "$MAXTHROWS" ]
do
	  let "die1 = RANDOM % $PIPS"
	  update_count $die1
	  let "throw += 1"
done

print_result
