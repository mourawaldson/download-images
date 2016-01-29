pattern='<img id="img.*" src="(.*)"'
while read line
do
  if [[ $line =~ $pattern ]]; then
    url=${BASH_REMATCH[1]}
    curl -O ${url/_thumb/}
  fi
done < source.txt
