#!/usr/bin/sh

echo ""
echo "Hey! How are you - How can i help you"
echo ""

while :
do
  echo "***************************************************"
  echo "Press 1 for list of file/folders"
  echo "Press 2 for list of files/folders with permission"
  echo "Press 3 to make a file"
  echo "Press 4 to delete a file/folder"
  echo "Press 5 to write to a file"
  echo "Press 6 to view the content of any file"
  echo "Press 7 to locate any file"
  echo "Press 8 to find files having suid permissions" 
  echo "Press bye to exit"
  echo "***************************************************"
  echo ""
  read choice
  case $choice in 
	"1")
	echo ""
	echo "Enter the location to enlist files/folders"
	read loca
	echo ""
	ls $loca
	echo "";;

	"2")
	echo ""
	echo "Enter the location to enlist files/folders"
	read l
	echo ""
	ls -al $l
	echo "";;

	"3")
	echo ""
	echo "Type the file name "
	read file_name
	touch $file_name
	echo ""
	echo "File is saved as $file_name"
	echo "";;

	"4")
	echo ""
	echo "Type the file name you want to delete"
	read del_file
	rm -r $del_file
	echo ""
	echo "$del_file deleted"
	echo "";;

	"5")
	echo ""
	echo "Type the file name you want to write"
	read write_file
	nano $write_file
	echo ""
	echo "$write_file written"
	echo "";;

	"6")
	echo ""
	echo "Type the file name "
	read view_name
	echo ""
	cat $view_name
	echo "";;

	"7")
	echo ""
	echo "Type the file name "
	read loc_name
	echo ""
	locate $loc_name
	echo "";;

	"8")
	echo ""
	echo "****Finding SUID set FILES****"
	echo ""
	find / -perm -u=s -type f 2>/dev/null
	echo "";;

	"bye")
	echo ""
	echo "Thank you"
	break;;
  esac
done
echo ""
