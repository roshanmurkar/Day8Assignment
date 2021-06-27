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
