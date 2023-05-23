while [ -n "$1" ]
do
  case "$1" in
    -n) CONTAINER_NAME="$2";;
    -P) PORT="$2";;
    -p) PW="$2";;
  esac
  shift     # shift to next param
done

if [ -z "$(sudo docker -v | grep Docker)" ];
	then
		echo "Docker not installed"
		sh docker-install.sh
fi

echo "mysql container create..."

sudo docker run -d --name ${CONTAINER_NAME:=mysql} -p ${PORT:=3306}:3306 -e MYSQL_ROOT_PASSWORD=${PW:=password} mysql

echo "mysql container created!"
echo "name ${CONTAINER_NAME:=mysql}"
echo "port ${PORT:=3306}:3306"
