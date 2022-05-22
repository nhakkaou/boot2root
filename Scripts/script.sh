input="./wordlist-url.txt"
ip="10.12.100.119"
while IFS= read -r line
do
   R=`curl -s -k -I "http://$ip/$line" | grep "HTTP" | awk '{print $2}'`
   # echo $R
	if [ "$R" != 404 ]
		then
      echo "Url : "
	  tput setaf 2
	  echo "http://$ip/"$line
       tput sgr0
	fi
done < "$input"