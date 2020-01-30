#!/bin/bash
#Author: Sachini Malikarachchi (10518627)

File=34-image-day.html

#check whether the file exists, if not download the webpage file 
if [ -f $File ]; then
    echo "Downloaded webpage already exists" 
else
    wget https://www.space.com/34-image-day.html
fi

#convert the date into the format of <full weekday name>, <full month name> <day of month>, <year>
Date=`date -d $1 +%A,\ %B\ %d,\ %Y`

echo "Connecting..."

#get the source according to the entered date and save that into the detail text file
sed "s/<h2/\n<h2/g" ./34-image-day.html | grep "$Date" > ./details.txt

#get the name of the image from the details text file
imagename=$(sed "s/<\/h2>/\n/g" ./details.txt | head -1 |  sed -e "s/<[^>]*>//g")
echo "TITLE: $imagename"

#get the URL of the image from the details text file
imageurl=$(sed "s/\ data-original-mos=\"/\n/g" ./details.txt | grep "$Date" | sed "s/\"\ data-pin-media=/\n/g" | head -1 | sed "s/\"//g")

#get the discription of the image from the details text file
imagediscription=$(sed "s/<\/strong>\ /\n/g" ./details.txt | tail -1 | sed -e "s/<[^>]*>//g" | sed "s/&mdash;/\n/g")
echo "EXPLANATION:"
echo $imagediscription

#get the credits of the image from the details text file
imagecredit=$(sed "s/<span class=\"credit\" itemprop=\"copyrightHolder\">/\n/g" ./details.txt | tail -1 | sed "s/<\/span><\/figcaption>/\n/g" | head -1)
echo $imagecredit

#downlaod the respective image from the website
wget -O "$imagename.jpg" $imageurl

