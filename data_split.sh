#! /bin/bash

class=$1
train_set="./train/$class"
test_set="./test/$class"
valid_set="./valid/$class"

for f in $(ls $class | sort -R | head -n 67); do
	mv "$class/$f" "$train_set/."
done


for f in $(ls $class | sort -R | head -n 33); do
	mv "$class/$f" "$valid_set/."
done

for f in $(ls $class); do
	mv "$class/$f" "$test_set/."
done

