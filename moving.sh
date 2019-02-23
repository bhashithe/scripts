!# /bin/bash

mkdir pos/
mkdir neg/

ls annotations > tmpMovables

for xml in $(cat tmpMovables); do
	IFS=. read -r image extention <<< $xml
	echo "$image.png" >> movables
done

rm tmpMovables

NUM=$(cat movables | wc -l)

for image in $(ls *.png | sort -R | head -n $NUM); do
	mv $image neg/
done

for image in $(cat movables); do
	mv $image pos/
done

cp -r pos/*.png ~/tcv/asr/pos/.
cp -r neg/*.png ~/tcv/asr/neg/.

mv neg/*.png .
mv pos/*.png .

rmdir pos/
rmdir neg/
