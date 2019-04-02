SERVER_NAME=$1
SCREEN_NAME="game_server_"$1

if [ "$(screen -list | grep $SCREEN_NAME)" ]; then
	echo -e "${RED}ERROR: A server with that name (or at minimum a conflicting terminal instance) is already running!${NC}"
else
	screen -S $SCREEN_NAME -d -m ~/custom_scripts/start_server_pt2.sh $SERVER_NAME $SCREEN_NAME
	if [ "$(screen -list | grep $SCREEN_NAME)" ]; then
		echo 'The server has been launched sucessfully.'
		echo 'Use "connect_server '$SERVER_NAME'" to connect to its terminal.'
	else
		echo -e "${YELLOW}WARN: The server screen cannot be found.  It may not have started.${NC}"
	fi
fi
