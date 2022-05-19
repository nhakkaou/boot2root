input="./wordlist-url.txt"
while IFS= read -r line
do
   R=`curl -s -k -I "https://10.12.100.191/$line" | grep "HTTP" | awk '{print $2}'`
   # echo $R
	if [ "$R" != 404 ]
		then
      echo "Url : "
	  tput setaf 2
	  echo "https://10.12.100.191/"$line
       tput sgr0
	fi
done < "$input"