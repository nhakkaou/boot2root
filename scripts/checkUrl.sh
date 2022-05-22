input="./common.txt"
######################################
# $IFS removed to allow the trimming # 
#####################################
while IFS= read -r line; 

do 
    URL=`curl -s  -k  -I  "https://10.12.100.74/$line" | grep  "HTTP"  | awk '{print $2}'` ;
    if [ "$URL" != "404" ]; 
    then
        echo "$line";
    fi
done < "$input"

# !q\]Ej?*5K5cy*AJ