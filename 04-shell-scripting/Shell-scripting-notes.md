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
1. **AND Operator (&&)**</br>
   **Both conditions must be true**</br>
``` 
age=20

if [ $age -ge 18 ] && [ $age -le 60 ]
then
echo "Eligible"
fi
```
**output:**
```Eligible```

2. **OR Operator (||)**
   At least one condition must be true.
```declarative
age=15

if [ $age -lt 18 ] || [ $age -gt 60 ]
then
    echo "Special Category"
fi
```
**Output:**
```Special Category```

3. **NOT Operator (!)**
   **Reverses the result.**
```
num=5

if ! [ $num -eq 10 ]
then
    echo "Number is not 10"
fi
```
**Output:**
```Number is not 10```

## 7. What is ternary operator in shell scripting ?
A ternary operator is a short way of writing an **if-else** condition in a single line.
**Example:**
```
age=20

[ $age -ge 18 ] && echo "Adult" || echo "Minor"
```
**Output:**
```Adult```

**Equivalent if-else**
```
if [ $age -ge 18 ]
then
    echo "Adult"
else
    echo "Minor"
fi
```
**Both produce the same result.**

## 8. what is loops in Shell scripting ?
A loop is used when you want to repeat the same task multiple times without writing the same command again and again.</br>
or</br>
A loop is a programming construct that repeatedly executes a block of code until a specified condition is met.</br>
**EX:-**
Write "Linux" 5 times.</br>
**Without a loop:**
```
echo "Linux"
echo "Linux"
echo "Linux"
echo "Linux"
echo "Linux"
```
**With a loop:**
```
for i in 1 2 3 4 5
do
echo "Linux"
done
```
Same output, but much less code.