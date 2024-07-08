#! /bin/bash
set -x
# echo "WELCOME TO BASH SCRIPTING"

# echo Our shell name is $BASH
# echo Our shell version name is $BASH_VERSION
# echo Our home directory is $HOME
# echo Our current working directory is$PWD

# name=Uchenna
# age=17
# echo "The name is $name"
# echo "I am $age years old"

# echo -n "Enter Names :"
# read name1 name2 name3
# echo "Entered Names : $name1, $name2, $name3"

# read -p 'username : ' user_name
# read -sp 'Password : ' password #-sp is used to hide text
# echo "username : $user_name"
# echo "Password : $password"

#creating an array of names:
# echo -n "Enter names : "
# read -a names #-a is used to create an array
# echo "Names : ${names[0]}, ${names[1]}, ${names[2]}"

# echo -n "Enter Name"
# read
# echo "Hello, $REPLY"


# $0 is the script name
# echo "Script name: $0"

# # $1, $2, etc. are the command-line arguments
# echo "First argument: $1"
# echo "Second argument: $2"

# # $# is the number of arguments
# echo "Number of arguments: $#"

# # $@ represents all the arguments as an array
# echo "All arguments: $@"

# #passing an argument as an array
# argument=("$@")

# echo ${argument[0]} ${argument[1]} ${argument[2]}


#If statements starts

# echo -n "Enter a number: "
# read number

# if [ $number -gt 0 ]; then
#     echo "The number is positive."
# else
#     echo "The number is not positive."
# fi
# name=Uchenna
# echo -n "Enter your age: "
# read age

# if [ $age -ge 18 ] && [ $age -le 65 ]; then
#     echo "You are of working age $name."
# else
#     echo "You are not of working age $name."
# fi


# count=10
# if (($count > 10 ));
# then
# echo "Condition is true"
# fi

# echo -n "Enter name"
# read name

# if [ $name == "Uche" ];
# then
# echo "Correct"
# elif [ $name == "Uchenna" ]; then
# echo "Also correct"
# else
# echo "Incorrect"
# fi

#if statement ends

#FILE TEST OPERATOR STARTS

#-e used to check if a file exist
# if [ -e "myfile.sh" ]; then
# echo "File exists"
# else 
# echo "file does not exist"
# fi

#-f used to check if the file exist and its a regular file and not a directory
# if [ -f "hello.sh" ]; then
#     echo "File is a regular file."
# else
#     echo "File is not a regular file."
# fi

#-d checks if the file exists and is a directory
# if [ -d "direct" ]; then
#     echo "Directory exists."
# else
#     echo "Directory does not exist."
# fi

#-s Returns true if the file exists and has a size greater than zero
# if [ -s "hello.sh" ]; then
#     echo "File has content."
# else
#     echo "File is empty or does not exist."
# fi

#-r Returns true if the file exists and is readable
# if [ -r "hello.sh" ]; then
#     echo "File is readable."
# else
#     echo "File is not readable or does not exist."
# fi

#-w Returns true if the file exists and is writable
# if [ -w "hello.sh" ]; then
#     echo "File is writable."
# else
#     echo "File is not writable or does not exist."
# fi

#-x Returns true if the file exists and is executable
# if [ -x "hello.sh" ]; then
#     echo "File is executable."
# else
#     echo "File is not executable or does not exist."
# fi

#FILE TEST OPERATOR ENDS

#APPENDING OUTPUT TO THE END OF A TEXT FILE STARTS

# echo -n "Enter text to append to the file: "
# read UserInput
# echo $UserInput >> myfile.txt
# echo "Text appended to myfile.txt"

#printf "%s\n" "$user_input" >> myfile.txt #you can also use this to append multiple texts

# echo -n "Enter Name to the file"
# read Name
# echo $Name >> secondtext.txt
# echo "$Name added to file"

#APPENDING OUTPUT TO THE END OF A TEXT FILE ENDS

#LOGICAL OPERATOR STARTS

#AND OPERATOR
# if [ condition1 ] && [ condition2 ]; then
#     # commands to execute if both conditions are true
# fi

# echo -n "Enter your age: "
# read age

# if [ "$age" -ge 18 ] && [ "$age" -le 30 ]; then
#     echo "You are between 18 and 30 years old."
#     else
#     echo "You are above 30"
# fi

#OR OPERATOR
# if [ condition1 ] || [ condition2 ]; then
#     # commands to execute if at least one condition is true
# fi

# echo -n "Enter week day: "
# read day

# if [ "$day" == "Saturday" ] || [ "$day" == "Sunday" ]; then
#     echo "It's the weekend!"
#     elif [ "$day" == "Monday" ] || [ "$day" == "Tuesday" ] || [ "$day" == "Wednesday" ] || [ "$day" == "Thursday" ] || [ "$day" == "Friday" ]; then
#     echo "Weekend never reach! Go Hustle."
#     else 
#     echo "Invalid Weekday"
# fi

#LOGICAL OPERATOR ends

#ARITHEMETIC OPERATIONS STARTS

# result=$((5+5))
# echo "5 + 5 = $result"

# echo -n "Enter First and Second Number: "

# read First Second
# result=$((First+Second))
# echo "$First + $Second = $result"

# sum=$((a + b))
# difference=$((a - b))
# product=$((a * b))
# quotient=$((a / b))
# remainder=$((a % b))


#ARITHEMETIC OPERATIONS ENDS

#FLOATING POINT MATH OPERATIONS IN BASH | bc Command start


# Using bc for floating-point arithmetic
# result=$(echo "2.5 * 3.5" | bc)
# echo "Result: $result"

# echo "3.5+8" | bc
# echo "3.5-8" | bc
# echo "3.5*8" | bc
# echo "scale=2;3.5/8" | bc #always use scale when using division
# echo "3.5%8" | bc

# num=27
# echo "scale=2;sqrt($num)" | bc  -l #finding square root of num
# num=4
# echo "scale=2;3^3" | bc  -l #finding power of 3


# Using awk for floating-point arithmetic
# result=$(awk 'BEGIN{printf "%.2f", 5.5 * 2.3}')
# echo "Result: $result"

#FLOATING POINT MATH OPERATIONS IN BASH | bc Command end

#CASE STATEMENTS STARTS

# case expression in
#     pattern1)
#         # commands to execute if expression matches pattern1
#         ;;
#     pattern2)
#         # commands to execute if expression matches pattern2
#         ;;
#     pattern3|pattern4)
#         # commands to execute if expression matches either pattern3 or pattern4
#         ;;
#     *)
#         # commands to execute if expression doesn't match any of the specified patterns
#         ;;
# esac


# echo -n "Enter a fruit: "
# read fruit

# case $fruit in 
#     "apple")
#         echo "You selected an $fruit"
#     ;;
#     "orange")
#         echo "You selected an $fruit"
#     ;;
#     "banana"|"grape")
#         echo "You selected banana or grape"
#     ;;
#     *)
#         echo "Invalid Fruit Name"
#     ;;
# esac

# echo -n "Enter car : "
# read vehicle

# case $vehicle in
#     "Car")
#     echo "Rent of $vehicle is 100 dollar";;
#     "van")
#     echo "Rent of $vehicle is 80 dollar";;
#     "bicycle")
#     echo "Rent of $vehicle is 5 dollar";;
#     *)
#     echo "Unknown Vehicle";;
# esac



#CASE STATEMENTS ENDS


#ARRAY VARIABLE STARTS

# # Method 1: Using parentheses with space-separated elements
# myarray=("element1" "element2" "element3")

# # Method 2: Using the `declare` command
# declare -a myarray=("element1" "element2" "element3")

# my_Array=("Uche" "Anita" "Emeka")

# echo "${my_Array[1]}"
# echo "${my_Array[@]}" #used for displaying everything in an array

# Finding the length of the array
# length=${#my_Array[@]}
# echo "Array length: $length"

# for names in "${my_Array[@]}"; do 
#     echo "My Name is $names"
# done

#changing the content of an array element
# my_Array[0]="Uchenna"
# echo "${my_Array[0]}"


#adding new items to an array
# my_Array+=("Joy" "Deborah")
# echo "${my_Array[@]}"

# Deleting an array element
# unset my_Array[0]

# echo "${!my_Array[@]}" #used to print the indexes of an array



#ARRAY VARIABLE ENDS

#WHILE LOOP STARTS

# num=1
# while [ $num -le 10 ]
# do
# echo "Number = $num"
# ((num++))
# done

# name=("Uchenna" "Emeka" "Anita")

# length=${#name[@]}
# i=0

# while [ $i -lt $length ]
# do
# echo "My Name is ${name[$i]} Nkwocha"
# ((i++))
# done

# food=("Indomie" "Yam" "Beans" "Egg" "Plantain")

# length=${#food[@]}
# i=0

# while [ $i -lt $length ]
# do
# echo "${food[$i]}"
# ((i++))
# done

# cars=("Toyota" "Lexus" "Honda" "Benz")

# lengthOfcar=${#cars[@]}
# i=0

# while [ $i -lt $lengthOfcar ]
# do
# echo "I Love ${cars[$i]}"
# ((i++))
# done

# n=1

# while [ $n -le 10 ]
# do
# echo "$n"
# ((n++))
# done
#WHILE LOOP ENDS


#USING SLEEP AND OPEN TERMINAL WITH WHILE LOOP STARTS

#n=1

# while [ $n -le 10 ]
# do
# echo "$n"
# ((n++))
# sleep 2 #this slows the printing of numbers fior 2 seconds each
# done



#USING SLEEP AND OPEN TERMINAL WITH WHILE LOOP ENDS


#READING GFILE CONTENT IN BASH USING WHILE LOOP STARTS

# file=uche.txt

# while IFS= read -r line; do
# echo "Line: $line"
# done < "$file"

# while read p
# do
# echo $p
# done < hello.sh

# while read file
# do 
# echo "$file"
# done < uche.txt

# while read sec
# do
# echo $sec
# done < myfile.txt 


#SECOND WAY
# cat myfile.txt | while read file
# do
# echo $file
# done

#BETTER WAY
#IFS stands for internal field seperator

# while IFS= read -r file
# do
# echo $file
# done < uche.txt

# while IFS= read -r f
# do
# echo "File: $f"
# done < uche.txt

#READING GFILE CONTENT IN BASH USING WHILE LOOP ENDS

#UNTIL LOOPS STARTS


# counter=0

# # This is an "until loop" using a negated condition
# until [ $counter -ge 5 ]; do
#     echo "Counter: $counter"
#     ((counter++))
# done

# count=10

# until [ $count -gt 15 ];
# do
# echo "$count"
# ((count++))
# done


#UNTILL LOOPS ENDS

#FOR LOOP STARTS

# for variable in list
# do
#     # commands to be executed for each iteration
# done

# NAMES=("Uchenna" "Anita" "Jude" "Jenny")

# for name in "${NAMES[@]}"
# do
# echo "My Name is $name"
# done

# cars=("Volvo" "Toyota" "Lexus")

# for CARS in "${cars[@]}"
# do
# echo "CAR TYPE: $CARS"
# done

# for ((i=0; i<5; i++))
# do
# echo "Index : $i"
# done

# name=("Uche" "Anita")
# for ((i=0; i<${#name[@]}; i++))
# do
# echo "My name is : ${name[$i]}"
# done

# for num in {1..50}
# do
# echo $num
# sleep 1
# done


#USING FOR LOOP TO EXECUTE COMMAND STARTS

# for command in ls pwd date
# do
# echo "-----------$command----------------"
# $command
# done


#printing all the files with for loop
# for item in *
# do
# if [ -f $item  ]; #check if its a file
# then
# echo $item
# fi 
# done

#USING FOR LOOP TO EXECUTE COMMAND ENDS

#FOR LOOP ENDS

#SELECT LOOP STARTS

# select Fruit in Apple Orange Banana Pawpaw quit 

# do
# case $Fruit in
# "Apple")
# echo "You selected an Apple";;
# "Orange")
# echo "You selected an Orange";;
# "Banana")
# echo "You selected Banana";;
# "Pawpaw")
# echo "You selected Pawpaw";;
# "quit")
# echo "Exiting the Menu"
# break;;
# *)
# echo "Fruit not available";;
# esac
# done

# select Names in Uchenna Anita Ben John Quit
# do
# case $Names in
# "Uchenna")
# echo "$Names Selected";;
# "Anita")
# echo "$Names Selected";;
# "John")
# echo "$Names Selected";;
# "Ben")
# echo "$Names Selected";;
# "Quit")
# echo "Exiting Menu"
# break;;
# *)
# echo "Error";;
# esac
# done

#SELECT LOOP ENDS

#BREAK AND CONTINUE STARTS

#Break
# for ((i=0; i<5; i++))
# do
# if [ $i -gt 3 ]; then
# break
# fi
# echo "$i"
# done

#continue
# for ((i=0; i<5; i++))
# do
# if [ $i -eq 3 ]; then
# continue
# fi
# echo "$i"
# done


#BREAK AND CONTINUE ENDS



#FUNCTION STARTS

# global=10

# func() {
#     local localvar=5

#     echo "Global variable: $global"
#     echo "Local variable: $localvar"
# }

# func


# echo -n "Enter first num: "
# read f

# echo -n "Enter second num: "
# read s



# add() {
#     result=$((f + s))
#     echo "Result = $result"
# }

# add

# addNum() {
#     local num1=$1
#     local num2=$2
#     local Sum=$((num1 +num2))
#     echo $Sum
# }
# result=$(addNum 10 20)
# echo "Result = $result"

# Add() {
#     echo -n "Enter first number: "
#     read f
#     echo -n "Enter second number: "
#     read s

#     sum=$((f + s))
#     echo "$f + $s = $sum"
# }
# Add

# Names=("Uchenna" "Anita" "Joy" "Franklin" "Micheal")

# hello() {
#     for ((i=0; i<${#Names[@]}; i++))
#     do
#     echo "My Name is ${Names[$i]} $1"
#     done
# }
# hello "Nkwocha"


#SIMPLE FUNCTION
# greet() {
#     echo "Hello $1"
# }

# greet "Uchenna"


#FUNCTION WITH PARAMETERS
# add() {
#     local num1=$1
#     local num2=$2
#     local sum=$(( num1+num2 ))
#     echo "$num1 + $num2 = $sum"
# }

# add 10 20

# usage() {
#     echo "You need to provide an argument "
#     echo "Usage : $0 File_name"
# }

# isFileExist() {
#     local file=$1
#     [[  -f "$file" ]] && return 0 || return 1
# }

# [[  $# -eq 0 ]] && usage

# if ( isFileExist "$1" ) 
# then
# echo "File is Found"
# else
# echo "File not found"
# fi

#FUNCTION ENDS


#READONLY COMMAND STARTS

# readonly -p Name=UCHENNA
# echo $Name

#!/bin/bash

# Declare a variable
# my_variable="Hello, World!"

# # Make the variable read-only
# readonly my_variable

# # Attempt to change the value (this will result in an error)
# my_variable="New Value"

# # Print the value of the read-only variable
# echo "Value of my_variable: $my_variable"

# Myname="Uchenna"
# readonly Myname
# Myname="Uche"
# echo "My name is $Myname"

#READONLY COMMAND ENDS

#SIGNALS AND TRAPS STARTS

# cleanup() {
#     echo "Cleaning up..."
#     # Add cleanup actions here
#     exit 1
# }

# trap cleanup SIGINT

# echo "Running... (Press Ctrl+C to interrupt)"
# while true; do
#     # Your script logic here
#     sleep 1
# done

# trap "echo exiit command is detected" 0

# echo "Hello world"

# exit 0

# Names=("Uchenna" "Anita" "Joy" "Franklin" "Micheal")

# trap "echo Exit signal is detected" SIGINT
# hello() {
#     echo "pid is $$"
#     for ((i=0; i<${#Names[@]}; i++))
#     do
#     sleep 5
#     echo "My Name is ${Names[$i]} $1"
#     done
#     exit 0
# }
# hello "Nkwocha"

# count=(1 2 3 4 5)
# for ((i=0; i<${#count[@]}; i++)) do
#     sleep 1
#     echo "count is: ${count[$i]}"
# done

# echo BASH

# for command in ls pwd date
# do 
#     echo "-------------------------$command----------------"
#     echo $command
# done

# for item in *
# do
#     if [ -d $item ]
#     then
#         echo $item
#     fi
# done

# select fruits in apple mango banana grape quit
# do
# case $fruits in
#  "apple")
#     echo "This is an $fruits"
#     ;;
#   "mango")
#     echo " This is a $fruits"
#     ;;
#     "banana")
#         echo "This is a $fruits"
#     ;;
#     "grape")
#         echo "This is a $fruits"
#     ;;
#     "quit")
#         echo "quiting the menu"
#         break;;
#     *)
#      echo "not available"
#      ;;
#      esac
#      done


# select fruits in apple mango orange quit
# do
# case $fruits in
#     "apple")
#         echo "This is an apple"
#         ;;
#     "mango")
#         echo "This is a mango"
#         ;;
#     "orange")
#         echo "This is an orange"
#         ;;
#     "quit")
#         echo "Quiting menu"
#         break;;
#     *)
#         echo "it is unavailable"
#     esac
#     done



# profitcalc() {
#     echo -n "Enter your salary: "
#     read salary
#     echo -n "Enter your total expenses: "
#     read expenses
#     local profit=$(( $salary-$expenses ))
#     echo "Your profit is $profit"
# }

# profitcalc

# echo -n "Enter Maths score 1-100: "
# read maths
# echo -n "Enter English score 1-100: "
# read eng
# echo -n "Enter Chemistry score 1-100: "
# read chem
# echo -n "Enter Physics score 1-100: "
# read phy

# total=$(($maths+$eng+$chem+$phy))

# if [[ $total -gt 300 ]] && [[  $total -lt 400 ]];
# then
# echo "You Got A+"
# elif [[  $total -gt 200 ]] && [[  $total -lt 400 ]];
# then
# echo "You Got B"
# elif [[  $total -gt 150 ]] && [[  $total -lt 400 ]];
# then 
# echo "You Got C"
# elif [[  $total -gt 80 ]] && [[  $total -lt 400 ]];
# then
# echo "You Got D"
# else
# echo "You Failed!"
# fi

# cleanup(){
#     clear

#     exit 1
# }

# trap cleanup SIGINT

# for ((i=0; i<=100; i++))
# do
# sleep 3
# echo "INDEX: $i"
# done
# file=/Users/ucee/Desktop/secondtext.txt
# trap "rm -f $file && echo file deleted; exit" 0 2 10

# for ((i=0; i<=100; i++))
# do
# sleep 3
# echo "INDEX: $i"
# done
# exit 0



# for ((i=0; i<=100; i++))
# do
# sleep 3
# echo "INDEX: $i"
# done
# exit 0

