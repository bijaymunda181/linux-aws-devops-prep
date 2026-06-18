## 1. What is shell scripting ?
Shell scripting is sequence of command that is written in a file to automate repetitive task.

## 2. How to run shell scripting ?
There are 2 methods :
1. bash /path/to/script
2. ./script.sh </br> 
**Note:** 
- Here . represent current directory that means run the script which present in current directory
- If you are in a different directory just provide the path like /root/shell/script.sh
- if you use 2nd method your script file should have execute permission . 

## 3. What is variable ?
Variable uses as a container who contain the value.</br>
name="Bijay"</br>
Age=24</br>
a=5</br>
b=2

## 4. What is constant variable ?
Once you define a variable and dont't wanna change it until end of the script .</br>
Ex: readonly name= "bijay"

## 5. What is Arrays in shell-scripting ?
In shell-scripting, an Array is a variable that can store multiple values . it can be string, number, etc.
Ex:-
myarray= ( Bijay 24 5.2 "Bijay Munda" )

## 6. What is logical operators in shell scripting ?
Logical operators are used to combine multiple conditions.
1. AND Operator (&&)</br>
   **Both conditions must be true**</br>
   age=20
```
if [ $age -ge 18 ] && [ $age -le 60 ]
then
echo "Eligible"
fi
**output**</br>
Eligible
```