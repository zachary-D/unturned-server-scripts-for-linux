SCREEN_NAME=server_updater

if [ "$1" ] && [ "$2" ]; then
	screen -S $(SCREEN_NAME) -d -m ~/custom_scripts/update_server_pt2.sh $1 $2

	if [ "$(screen -list | grep $SCREEN_NAME)" ]; then
		echo 'The updater has been launched sucessfully.'
	else
		echo -e "${YELLOW}WARN: The updater screen cannot be found.  It may not have started.${NC}"
	fi

else
	echo -e "${RED}Error: You must provide a steam username and password as the first and second arguments."
fi
