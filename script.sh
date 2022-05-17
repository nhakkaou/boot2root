input="./wordlist-url.txt"
while IFS= read -r line
do
   R=$(curl -k -I "https://10.12.100.216/$line" 1&>2 /dev/null | grep "HTTP/1.1 200 OK")
   echo $R
	if [ "$R" == 1 ]
		then
      echo "Password is : "
	  tput setaf 2
	  echo $line
	  break
	fi
done < "$input"

    # url="https://$ipAdress/$line"
    # echo $url;
    # resultStatus=`curl -k -I "$url" 1&>2 /dev/null | grep HTTP `
    # echo $resultStatus;
    # if [ "$resultStatus" == "200" ]; then
    #     echo "$line"
    #     break;
    # fi