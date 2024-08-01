#!/bin/bash

SUCCESS=0
FAIL=0
COUNTER=0
RESULT=""

tests="test.txt"

# Без флагов

echo "Test 1: grep -e on test.txt | s21_grep -e on test.txt"
./s21_grep -e on test.txt >> s21_log.txt
grep -e on test.txt >> grep_log.txt
RESULT="$(diff -s s21_log.txt grep_log.txt)"
(( COUNTER++ ))
if [ "$RESULT" == "Files s21_log.txt and grep_log.txt are identical" ]
then
    (( SUCCESS++ ))
    echo "$SUCESS \033[32msuccess\033[0m"
else
    (( FAIL++ ))
    echo "$FAIL \033[31mfail\033[0m"
fi
rm s21_log.txt grep_log.txt

echo "Test 2: grep -i -e ON test.txt | s21_grep -i -e ON test.txt"
./s21_grep -i -e ON test.txt >> s21_log.txt
grep -i -e ON test.txt >> grep_log.txt
RESULT="$(diff -s s21_log.txt grep_log.txt)"
(( COUNTER++ ))
if [ "$RESULT" == "Files s21_log.txt and grep_log.txt are identical" ]
then
    (( SUCCESS++ ))
    echo "$SUCESS \033[32msuccess\033[0m"
else
    (( FAIL++ ))
    echo "$FAIL \033[31mfail\033[0m"
fi
rm s21_log.txt grep_log.txt

echo "Test 3: grep -v -e on test.txt | s21_grep -v -e on test.txt"
./s21_grep -v -e on test.txt >> s21_log.txt
grep -v -e on test.txt >> grep_log.txt
RESULT="$(diff -s s21_log.txt grep_log.txt)"
(( COUNTER++ ))
if [ "$RESULT" == "Files s21_log.txt and grep_log.txt are identical" ]
then
    (( SUCCESS++ ))
    echo "$SUCESS \033[32msuccess\033[0m"
else
    (( FAIL++ ))
    echo "$FAIL \033[31mfail\033[0m"
fi
rm s21_log.txt grep_log.txt

echo "Test 4: grep -c -e on test.txt | s21_grep -c -e on test.txt"
./s21_grep -c -e on test.txt >> s21_log.txt
grep -c -e on test.txt >> grep_log.txt
RESULT="$(diff -s s21_log.txt grep_log.txt)"
(( COUNTER++ ))
if [ "$RESULT" == "Files s21_log.txt and grep_log.txt are identical" ]
then
    (( SUCCESS++ ))
    echo "$SUCESS \033[32msuccess\033[0m"
else
    (( FAIL++ ))
    echo "$FAIL \033[31mfail\033[0m"
fi

echo "Test 5: grep -n -e on test.txt | s21_grep -n -e on test.txt"
./s21_grep -n -e on test.txt >> s21_log.txt
grep  -n -e on test.txt >> grep_log.txt
RESULT="$(diff -s s21_log.txt grep_log.txt)"
(( COUNTER++ ))
if [ "$RESULT" == "Files s21_log.txt and grep_log.txt are identical" ]
then
    (( SUCCESS++ ))
    echo "$SUCESS \033[32msuccess\033[0m"
else
    (( FAIL++ ))
    echo "$FAIL \033[31mfail\033[0m"
fi
rm s21_log.txt grep_log.txt

echo "Test 6: grep -h -e on test.txt | s21_grep -h -e on test.txt"
./s21_grep -h -e on test.txt >> s21_log.txt
grep  -h -e on test.txt >> grep_log.txt
RESULT="$(diff -s s21_log.txt grep_log.txt)"
(( COUNTER++ ))
if [ "$RESULT" == "Files s21_log.txt and grep_log.txt are identical" ]
then
    (( SUCCESS++ ))
    echo "$SUCESS \033[32msuccess\033[0m"
else
    (( FAIL++ ))
    echo "$FAIL \033[31mfail\033[0m"
fi
rm s21_log.txt grep_log.txt

echo "Test 7: grep -s -e on test.txt | s21_grep -s -e on test.txt"
./s21_grep -s -e on test.txt >> s21_log.txt
grep  -s -e on test.txt >> grep_log.txt
RESULT="$(diff -s s21_log.txt grep_log.txt)"
(( COUNTER++ ))
if [ "$RESULT" == "Files s21_log.txt and grep_log.txt are identical" ]
then
    (( SUCCESS++ ))
    echo "$SUCESS \033[32msuccess\033[0m"
else
    (( FAIL++ ))
    echo "$FAIL \033[31mfail\033[0m"
fi
rm s21_log.txt grep_log.txt

echo "Test 8: grep -f -e on test.txt | s21_grep -f -e on test.txt"
./s21_grep -f -e on test.txt >> s21_log.txt
grep  -f -e on test.txt >> grep_log.txt
RESULT="$(diff -s s21_log.txt grep_log.txt)"
(( COUNTER++ ))
if [ "$RESULT" == "Files s21_log.txt and grep_log.txt are identical" ]
then
    (( SUCCESS++ ))
    echo "$SUCESS \033[32msuccess\033[0m"
else
    (( FAIL++ ))
    echo "$FAIL \033[31mfail\033[0m"
fi
rm s21_log.txt grep_log.txt

echo "Test 9: grep -f reg.txt test.txt | s21_grep -f reg.txt test.txt"
./s21_grep -f reg.txt test.txt >> s21_log.txt
grep -f reg.txt test.txt >> grep_log.txt
RESULT="$(diff -s s21_log.txt grep_log.txt)"
(( COUNTER++ ))
if [ "$RESULT" == "Files s21_log.txt and grep_log.txt are identical" ]
then
    (( SUCCESS++ ))
    echo "$SUCESS \033[32msuccess\033[0m"
else
    (( FAIL++ ))
    echo "$FAIL \033[31mfail\033[0m"
fi
rm s21_log.txt grep_log.txt

echo "Test 10: grep -o -e on test.txt | s21_grep -o -e on test.txt"
./s21_grep -o -e on test.txt >> s21_log.txt
grep -o -e on test.txt >> grep_log.txt
RESULT="$(diff -s s21_log.txt grep_log.txt)"
(( COUNTER++ ))
if [ "$RESULT" == "Files s21_log.txt and grep_log.txt are identical" ]
then
    (( SUCCESS++ ))
    echo "$SUCESS \033[32msuccess\033[0m"
else
    (( FAIL++ ))
    echo "$FAIL \033[31mfail\033[0m"
fi
rm s21_log.txt grep_log.txt

echo "\033[31mFAIL: $FAIL\033[0m"
echo "\033[32mSUCCESS: $SUCCESS\033[0m"
echo "ALL: $COUNTER"


#be